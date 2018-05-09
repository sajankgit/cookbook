#
# Cookbook:: cookbook
# Recipe:: artifact
#

execute 'update' do
     command 'sudo apt-get update'
end

default['java']['jdk_version'] = '8'
default['java']['install_flavor'] = 'oracle'
default['java']['jdk']['7']['x86_64']['url'] = 'http://artifactory.example.com/artifacts/jdk-7u65-linux-x64.tar.gz'
default['java']['jdk']['7']['x86_64']['checksum'] = 'The SHA-256 checksum of the JDK archive'
default['java']['oracle']['accept_oracle_download_terms'] = true

bash 'install_java' do
 code <<-EOH
 add-apt-repository ppa:webupd8team/java
 apt-get update
 apt-get -y install oracle-java8-installer
 EOH
end
