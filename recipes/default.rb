#
# Cookbook:: cookboo'
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

bash 'move' do
  cwd '/'
  code <<-EOH
    dpkg -i docker-gc_0.1.0_all.deb
    EOH
end


cron 'docker-gc' do
  minute '0'
  hour '*/1'
  command "/usr/sbin/docker-gc"
  action :create
  
end

