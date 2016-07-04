#!/usr/bin/env bash
deb="chef_12.10.24-1_amd64.deb"

wget -nc "https://packages.chef.io/stable/ubuntu/10.04/$deb"
[ -e $deb ] && sudo dpkg -i $deb || echo "Chef deb package missing!"
