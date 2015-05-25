# Creates certificate directory.
#
# Recipe:: certificate_directory
# Cookbook:: ssl-vault
# Author:: Greg Albrecht <gba@onbeep.com>
# Copyright:: Copyright 2014 OnBeep, Inc.
# License:: The MIT License (MIT)
# Source:: https://github.com/onbeep-cookbooks/ssl-vault
#


directory node['ssl-vault']['certificate_directory'] do
  recursive true
  owner 'root'
  node['ssl-vault']['cert_group']
  mode node['ssl-vault']['chmod']['certificate_directory']
end
