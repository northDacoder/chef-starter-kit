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
service "httpd" do
	action [:enable, :start]
end

node.default["apache"]["indexfile"] = "index2.html"

# defined the file resource to create a cookbook_file from the 'index.html' source
cookbook_file "/var/www/html/index.html" do
	source node["apache"]["indexfile"]
	mode "0644"
end 






