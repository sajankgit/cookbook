execute 'update' do
     command 'sudo apt-get update'
end

bash ‘install’ do
 code <<-EOH
 wget -c -O- "https://bintray.com/user/downloadSubjectPublicKey?username=jfrog" | sudo apt-key add -
 EOH
 code <<-EOH
 echo "deb https://jfrog.bintray.com/artifactory-pro-debs trusty main" | sudo tee -a /etc/apt/sources.list
 EOH
 code <<-EOH
 apt-get update
 EOH
 code <<-EOH 
 apt-get install jfrog-artifactory-pro
 EOH
end
