include_recipe 'vsts_build_agent::default'

vsts_access = data_bag_item('users', 'vsts')

group 'builder' do
  action :create
end

user 'builder' do
  comment 'Builder User'
  gid 'builder'
  shell '/bin/bash'
  system true
end

directory '/mnt/agents' do
  owner 'builder'
  group 'builder'
  mode 00755
  action :create
end

vsts_build_agent_xplat node['hostname'] do
  install_dir "/mnt/agents/#{node['hostname']}"
  user 'builder'
  group 'builder'
  sv_name 'agent1'
  vsts_url vsts_access['vsts_url']
  vsts_user vsts_access['vsts_user']
  vsts_token vsts_access['vsts_token']
  vsts_pool node['vsts']['pool']
  action :install
end
