#
# Cookbook:: cookboo'
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
execute 'update' do
     command 'sudo apt-get update && apt-get upgrade'
end

execute 'install' do
     command 'sudo apt-get -y install git devscripts debhelper build-essential dh-make'
end

execute 'clone' do
      command 'sudo git clone https://github.com/spotify/docker-gc.git'
      cwd "/docker-gc"
end

execute 'build' do
     command 'sudo debuild -us -uc -b'
end

dpkg_package 'docker-gc' do
  source 'docker-gc_0.1.0_all.deb'
  action :install
end

cron 'docker-gc' do
  minute '0'
  hour '*/1'
  command '/usr/sbin/docker-gc'
  action :create
end
