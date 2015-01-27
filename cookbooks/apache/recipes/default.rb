#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# defined the package resource to install httpd
package "httpd" do
	action :install
end


# defined the service resource to enable & start the apache service 
service 'httpd' do
	action [:enable, :start]
end





