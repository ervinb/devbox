#
# Cookbook Name:: userland
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#include_recipe "userland::_tmux"

include_recipe "userland::_vim"

include_recipe "userland::_zsh"

include_recipe "userland::_motd"

include_recipe "userland::_tmux"

include_recipe "userland::_extra_packages"
