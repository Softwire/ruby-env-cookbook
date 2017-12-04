config = node[:ruby_env_cookbook][:mysql]

mysql_service config[:service_name] do
  port config[:port]
  version config[:version]
  initial_root_password config[:password]
  action config[:action]
end

if config[:include_client]
  mysql_client config[:service_name] do
    action :create
  end
end