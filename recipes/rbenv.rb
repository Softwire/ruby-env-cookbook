config = node['ruby_env_cookbook']['rbenv']

version = config[:version]
user = config[:user]

rbenv_user_install user

rbenv_plugin 'ruby-build' do
  git_url 'https://github.com/rbenv/ruby-build.git'
  user user
end

rbenv_ruby version do
  user user
end

rbenv_global version do
  user user
end

config[:gems].each do |gem|
  rbenv_gem gem[:name] do
    version gem[:version]
    user user
    rbenv_version version
  end
end