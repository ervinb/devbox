bash "install powerline" do
  code "sudo pip install powerline-status"
end

template "/home/#{node[:default_user]}/.tmux.conf" do
  source "tmux.conf"
end
