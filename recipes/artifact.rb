execute 'update' do
     command 'sudo apt-get update'
end

bash ‘install_java’ do
 code <<-EOH
 add-apt-repository ppa:webupd8team/java
 apt-get update
 apt-get -y install oracle-java8-installer
 EOH
end
