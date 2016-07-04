#
# Cookbook Name:: base-packages
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "base::_docker"

include_recipe "base::_mysql"
