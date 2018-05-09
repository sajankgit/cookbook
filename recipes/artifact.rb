#
# Cookbook:: cookbook
# Recipe:: artifact
#

execute 'update' do
     command 'sudo apt-get update'
end

include_recipe mycookbooks::default
