#
# Cookbook Name:: mail-client
# Recipe:: default
#
# Copyright (C) 2013 Rally Software Development Corp
#
# All rights reserved - Do Not Redistribute
#

if node['platform_family'] == 'rhel'
  include_recipe 'yum::epel'
elsif node['platform_family'] == 'debian'
  include_recipe 'apt'
end

package 'mutt'
package 'alpine'
