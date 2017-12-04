default[:mysql][:service_name] = 'default'
default[:mysql][:version] = '5.5'
default[:mysql][:port] = '3306'
default[:mysql][:password] = 'password'
default[:mysql][:action] = [:create, :start]
default[:mysql][:include_client] = true

default[:mysql][:rbenv][:version] = '2.4.2'
default[:mysql][:rbenv][:user] = 'vagrant'
default[:mysql][:rbenv][:gems] = [{name: 'bundler', version: '1.16.0'}]