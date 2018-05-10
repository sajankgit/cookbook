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
 (echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections) && apt-get -y install oracle-java8-installer
 EOH
end
