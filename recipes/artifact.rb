execute 'update' do
     command 'sudo apt-get update'
end

bash ‘install’ do
 code <<-EOH
 echo "deb https://jfrog.bintray.com/artifactory-pro-debs trusty main" | sudo tee -a /etc/apt/sources.list
 EOH
end
