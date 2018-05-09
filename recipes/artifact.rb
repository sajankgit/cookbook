#
# Cookbook:: cookbook
# Recipe:: artifact
#

execute 'update' do
     command 'sudo apt-get update'
end

execute ‘repo’ do
     command ' add-apt-repository ppa:webupd8team/java'
end

execute 'update' do
     command 'sudo apt-get update'
end

execute ‘install’ do
     command 'apt-get -y install oracle-java8-installer'
end


execute 'update' do
     command 'sudo apt-get update'
end

execute 'repo' do
     command  'add-apt-repository ppa:webupd8team/java'
end

 execute 'update2' do
     command 'sudo apt-get update'
end

 
package 'nginx' do
  action :install
end

service 'nginx' do
  supports status: true, restart: true, reload: true
  action :enable
end
