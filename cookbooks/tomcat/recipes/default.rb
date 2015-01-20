#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



cookbook_file "/opt/installjava.sh" do
  source "installjava.sh"
  mode "0677"
end

#bash "installjava" do
 # guard_interpreter :bash
  #code "/opt/installjava.sh"
#end

package "tomcat7" do
	action :install
end

