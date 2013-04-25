#
# Cookbook Name:: mail-client
# Recipe:: default
#
# Copyright (C) 2013 Rally Software Development Corp
# 
# All rights reserved - Do Not Redistribute
#
include_recipe "yum::epel"

package "mutt"
package "alpine"