default[:ruby_env_cookbook][:mysql][:service_name] = 'default'
default[:ruby_env_cookbook][:mysql][:version] = '5.5'
default[:ruby_env_cookbook][:mysql][:port] = '3306'
default[:ruby_env_cookbook][:mysql][:password] = 'password'
default[:ruby_env_cookbook][:mysql][:action] = [:create, :start]
default[:ruby_env_cookbook][:mysql][:include_client] = true

default[:ruby_env_cookbook][:rbenv][:version] = '2.4.2'
default[:ruby_env_cookbook][:rbenv][:user] = 'vagrant'
default[:ruby_env_cookbook][:rbenv][:gems] = [{name: 'bundler', version: '1.16.0'}]