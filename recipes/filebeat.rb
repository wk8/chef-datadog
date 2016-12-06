include_recipe 'datadog::dd-agent'

# Monitor filebeat
#
# Assuming you have a filebeat instance on a given server, you will need to set
# up the following attributes at some point in your Chef run, in either
# a role or another cookbook.
#
#
# node['datadog']['filebeat']['instances'] = [
#   {
#     'registry_file_path' => '/var/lib/filebeat/registry'
#   }
# ]

datadog_monitor 'filebeat' do
  instances node['datadog']['filebeat']['instances']
end
