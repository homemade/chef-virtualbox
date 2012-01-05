#
# Cookbook Name:: VirtualBox
# Recipe:: default
# Author:: Benedict Steele <benedict@homemadedigital.com>
#
# Copyright 2012, HomeMade Digital
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

case node['platform']
when "ubuntu"
  apt_repository "virtualbox" do
    uri "http://download.virtualbox.org/virtualbox/debian"
    distribution node['lsb']['codename']
    components ["contrib"]
    key "http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc"
    action :add
  end
end

package "virtualbox" do
  package_name node[:virtualbox][:package]  
  action :install
end