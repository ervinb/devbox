package "zsh"

template "/etc/pam.d/chsh" do
  source "chsh_pam.erb"
end

group "chsh" do
  action :create
  members node[:default_user]
end

bash "install oh-my-zsh" do
  cwd "/home/#{node[:default_user]}"
  user node[:default_user]
  code <<-CMD
    export ZSH=~/oh-my-zsh
    git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git
    chsh -s $(grep /zsh$ /etc/shells | tail -1)
  CMD
end

template "/home/#{node[:default_user]}/.zshrc" do
  source "zshrc.erb"
end
