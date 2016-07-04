mysql_service 'default' do
  version node["mysql"]["version"]
  port node["mysql"]["port"]
  data_dir node["mysql"]["data_dir"]
  initial_root_password node["mysql"]["root_password"]
  action [:create]
end
