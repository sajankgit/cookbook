execute 'update' do
     command 'sudo apt-get update'
end

bash ‘installjava’ do
 code <<-EOH
 add-apt-repository ppa:webupd8team/java
 EOH
end

execute 'update' do
     command 'sudo apt-get update'
end

execute 'install' do
     command 'apt-get -y install oracle-java8-installer'
end
