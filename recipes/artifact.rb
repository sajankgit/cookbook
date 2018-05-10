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

bash 'install_jfrog' do
 code <<-EOH
 wget -c -O- "https://bintray.com/user/downloadSubjectPublicKey?username=jfrog" | sudo apt-key add -
 echo "deb https://jfrog.bintray.com/artifactory-pro-debs trusty main" | sudo tee -a /etc/apt/sources.list
 apt-get update
 apt-get install jfrog-artifactory-pro
 EOH
end

execute 'install_lvm' do
     command 'sudo apt-get install lvm2'
end

