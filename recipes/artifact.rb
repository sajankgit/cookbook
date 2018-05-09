bash ‘install_nginx’ do
 code <<-EOH
 wget -c -O- http://nginx.org/keys/nginx_signing.key | sudo apt-key add -
 echo "deb http://nginx.org/packages/ubuntu/ trusty nginx" | sudo tee -a /etc/apt/sources.list.d/nginx.list > /dev/null
 apt-get update
 apt-get -y install nginx
 service nginx restart
 EOH
end
