#
# Cookbook:: cookboo'
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
dpkg_package "docker-gc” do
  source “docker-gc_0.1.0_all.deb"
  action :install
end


cron “docker-gc” do
  minute '0'
  hour '*/1'
  command "/usr/sbin/docker-gc"
  action :create

