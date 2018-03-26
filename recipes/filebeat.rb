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
#     # if you get permission errors with filebeat version >= 5.x while trying
#     #  to use this, you might want to have a look at
#     # https://github.com/elastic/beats/pull/6455
#     # and/or
#     # https://github.com/wk8/cookbook-copy-filebeat-registry
#     'registry_file_path' => '/var/lib/filebeat/registry',
#
#     # note that if you use this, filebeat must be running with the
#     # `--httpprof [HOST]:PORT` option enabled
#     'http_profiler' => {
#       # this one is the only required option for the HTTP profiler
#       'port' => 2828,
#       # 'localhost' is the default value
#       'host' => 'localhost',
#       # this is a list of regular expressions specifying which metrics
#       # you care about: only metrics matching one of the regexes in the
#       # list will be pushed to Datadog - if no regex is given (empty list,
#       # default value), all metrics are pushed
#       'only_metrics' => [],
#       # the timeout for HTTP queries against Filebeat's HTTP profiler,
#       # in seconds (defaults to 2)
#       'timeout' => 2
#     }
#   }
# ]

datadog_monitor 'filebeat' do
  instances node['datadog']['filebeat']['instances']
end
