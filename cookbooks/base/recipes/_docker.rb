include_recipe "chef-apt-docker"

docker_installation_package 'default' do
  action :create
  package_options %q|--force-yes -o Dpkg::Options::='--force-confold' -o Dpkg::Options::='--force-all'| # if Ubuntu for example
end

docker_image "busybox" do
  action :pull
end

group "docker" do
  members "#{node[:default_user]}"
end
