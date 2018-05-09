#
# Cookbook:: cookbook
# Recipe:: artifact
#

execute 'update' do
     command 'sudo apt-get update'
end

execute ‘repo’ do
     command 'add-apt-repository ppa:webupd8team/java'
end

execute 'update' do
     command 'sudo apt-get update'
end

execute ‘install’ do
     command 'apt-get -y install oracle-java8-installer'
end
