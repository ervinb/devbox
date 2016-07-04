default["userland"]["ohmyzsh-url"] = "https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh"
default["userland"]["vimrc_url"] = "https://raw.githubusercontent.com/ervinb/dotfiles/master/vimrc"
default["userland"]["vim_addons_path"] = "/home/#{node[:default_user]}/.vim"
default["userland"]["vim_dirs"] = %w(colors bundle bundle/vundle)
default["userland"]["vundle_repo"] = "https://github.com/VundleVim/Vundle.vim"
default["userland"]["extra_packages"] = %w(mtr htop tree libxml2-dev libxslt-dev)
