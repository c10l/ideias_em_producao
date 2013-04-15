#
# Cookbook Name:: webapp
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "apache2"
package "libapache2-mod-php5"

template "/var/www/webapp.php" do
  source "webapp.php.erb"
  owner "root"
  group "root"
  mode 00644
end

execute "restart webserver" do
  command "service apache2 restart"
  action :run
end
