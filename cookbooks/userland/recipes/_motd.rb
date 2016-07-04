package "cowsay"

package "fortune"

template "/etc/update-motd.d/99-chuck-cow" do
  source "chuck_cow.erb"
  mode 0755
end
