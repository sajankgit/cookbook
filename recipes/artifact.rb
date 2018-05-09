#
# Cookbook:: cookbook
# Recipe:: artifact
#

execute 'update' do
     command 'sudo apt-get update'
end

bash 'install_java' do
 code <<-EOH
 add-apt-repository ppa:webupd8team/java
 apt-get update
 apt-get DEBIAN_FRONTEND=noninteractive install -y oracle-java8-installer
 EOH
end
