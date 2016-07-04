vundle_path = "#{node[:userland][:vim_addons_path]}/bundle/vundle"
solarized_scheme_path = "#{node[:userland][:vim_addons_path]}/colors/solarized.vim"

package "vim"

remote_file "/home/#{node[:default_user]}/.vimrc" do
  owner node[:default_user]
  source node[:userland][:vimrc_url]
end

directory node[:userland][:vim_addons_path] do
  owner node[:default_user]
end

node[:userland][:vim_dirs].each do |dir|
  directory "#{node[:userland][:vim_addons_path]}/#{dir}" do
    recursive true
    owner node[:default_user]
  end
end

bash "clone vundle" do
  user node[:default_user]
  code <<-CMD
  mkdir -p #{vundle_path}
  git clone #{node[:userland][:vundle_repo]} #{vundle_path}
  CMD
  not_if "[ -d #{vundle_path}/autoload ]"
end

bash "install vim plugins" do
  user node[:default_user]
  cwd "/home/#{node[:default_user]}"
  code <<-CMD
  touch #{solarized_scheme_path}
  sudo su - #{node[:default_user]} bash -c 'vim +PluginInstall +qall'
  CMD
end

link "#{node[:userland][:vim_addons_path]}/bundle/vim-colors-solarized/colors/solarized.vim" do
  to "#{solarized_scheme_path}"
end
