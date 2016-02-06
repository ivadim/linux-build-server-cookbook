include_recipe 'apt::default'

package 'walinuxagent' do
  action :upgrade
  only_if { node['cloud_v2'] && node['cloud_v2']['provider'] == 'azure' }
end

include_recipe 'build-essential::default'

package 'cmake' do
  action :install
end

include_recipe 'java::openjdk'
include_recipe 'android-sdk::default'
include_recipe 'maven::default'

include_recipe 'nodejs::default'
include_recipe 'nodejs::npm'

execute 'Set npm global prefix' do
  command 'npm config set prefix /usr/local'
end

python_runtime '2'
python_runtime '3'

include_recipe 'git::default'
include_recipe 'subversion::client'

include_recipe 'chef-client::default'

include_recipe 'linux-build-server::_install_build_agent'
