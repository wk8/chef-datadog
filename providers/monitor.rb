# Creates the proper yaml file in /etc/dd-agent/conf.d/

def whyrun_supported?
  true
end

action :add do
  Chef::Log.debug "Adding monitoring for #{new_resource.name}"
  template "#{node['datadog']['config_dir']}/conf.d/#{new_resource.name}.yaml" do
    if node['platform_family'] == 'windows'
      owner 'Administrators'
      rights :full_control, 'Administrators'
      inherits false
    else
      owner 'dd-agent'
      mode 00600
    end
    variables(
      :init_config => new_resource.init_config,
      :instances   => new_resource.instances
    )
    notifies :restart, 'service[datadog-agent]', :delayed
  end
  new_resource.updated_by_last_action(false)
end

action :remove do
  if ::File.exist?("#{node['datadog']['config_dir']}/conf.d/#{new_resource.name}.yaml")
    Chef::Log.debug "Removing #{new_resource.name} from #{node['datadog']['config_dir']}/conf.d/"
    file "#{node['datadog']['config_dir']}/conf.d/#{new_resource.name}.yaml" do
      action :delete
      notifies :restart, 'service[datadog-agent]', :delayed
    end
    new_resource.updated_by_last_action(true)
  end
end
