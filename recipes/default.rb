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
end

execute 'update' do
     command 'sudo apt-get update && apt-get upgrade'
end

execute 'install' do
     command 'sudo apt-get -y install git devscripts debhelper build-essential dh-make'
end

execute 'clone' do
      command 'sudo git clone https://github.com/spotify/docker-gc.git'
end

execute 'move' do
    cwd '/docker-gc'
end

