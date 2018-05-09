#
# Cookbook:: cookboo'
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

<<<<<<< HEAD
dpkg_package "docker-gc” do
  source "/tmp/docker-gc_0.1.0_all.deb"
  action :install
end


cron “docker-gc” do
  minute '0'
  hour '*/1'
  command "/usr/sbin/docker-gc"
  action :create
=======
execute 'update' do
     command 'sudo apt-get update && apt-get upgrade'
end

execute 'install' do
     command 'sudo apt-get -y install git devscripts debhelper build-essential dh-make'
end

execute 'clone' do
      command 'sudo git clone https://github.com/spotify/docker-gc.git'
end

bash 'move' do
  cwd '/docker-gc'
  code <<-EOH
    sudo debuild -us -uc -b
    EOH
end


bash 'deb' do
  cwd '/'
  code <<-EOH
    dpkg -i docker-gc_0.1.0_all.deb
    EOH
end

cron 'docker-gc' do
  minute '0'
  hour '1'
  command "/usr/sbin/docker-gc"
  action :create
end
>>>>>>> 8fb8287d0fbf7ac10d56a29ccc6413b8afd0d38e

