#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


package "mysql-server" do	
action :install
end

package "mysql-client" do
action :install
end

execute 'createusr' do
 cwd '/var'
 command 'mysql -u root -e "CREATE USER 'rezoomex'@'localhost' IDENTIFIED BY 'password123'";'
end


execute 'createdb' do
 cwd '/var'
 command 'mysql -u root -e "create database rezoomex"; '
end
