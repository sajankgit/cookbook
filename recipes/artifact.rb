execute 'update' do
     command 'sudo apt-get update'
end

bash ‘install’ do
 code <<-EOH
 wget -c -O- "https://bintray.com/user/downloadSubjectPublicKey?username=jfrog" | sudo apt-key add -
 echo "deb https://jfrog.bintray.com/artifactory-pro-debs trusty main" | sudo tee -a /etc/apt/sources.list
 apt-get update
 apt-get install jfrog-artifactory-pro
 EOH
end
