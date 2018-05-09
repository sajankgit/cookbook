#
# Cookbook:: cookbook
# Recipe:: artifact
#

execute 'update' do
     command 'sudo apt-get update'
end

bash ‘installjava’ do
 code <<-EOH
 add-apt-repository ppa:webupd8team/java
 apt-get update
 apt-get -y install oracle-java8-installer
 EOH
end

bash ‘installnginx’ do
 code <<-EOH
 wget -c -O- http://nginx.org/keys/nginx_signing.key | sudo apt-key add -
 echo "deb http://nginx.org/packages/ubuntu/ trusty nginx" | sudo tee -a /etc/apt/sources.list.d/nginx.list > /dev/null
 apt-get update
 apt-get -y install nginx
 service nginx restart
 EOH
end

bash ‘installjfrog’ do
 code <<-EOH
 wget -c -O- "https://bintray.com/user/downloadSubjectPublicKey?username=jfrog" | sudo apt-key add -
 echo "deb https://jfrog.bintray.com/artifactory-pro-debs trusty main" | sudo tee -a /etc/apt/sources.list
 apt-get update
 apt-get install jfrog-artifactory-pro
 EOH
end
