directory "#{node["kafkatoolbox"]["kafkatools_cache_dir"]}" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

directory "#{node["kafkatoolbox"]["base_dir"]}" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

toolboxDirname = "KafkaToolbox-#{node["kafkatoolbox"]["kafkatools_version"]}"

binFileName="KafkaToolbox-#{node["kafkatoolbox"]["kafkatools_version"]}.tar.gz"
node.default["kafkatoolbox"]["binary_url"] = "#{node["kafkatoolbox"]["download_url"]}/#{binFileName}"
node.default["kafkatoolbox"]["install_dir"] = "#{node["kafkatoolbox"]["base_dir"]}/KafkaToolbox"
# Download kafkatoolbox tzr file if it does not exist already in cache directory
remote_file "#{node["kafkatoolbox"]["kafkatools_cache_dir"]}/#{binFileName}" do
  action :create_if_missing
  source node["kafkatoolbox"]["binary_url"]
  mode 00644
  backup false
end

execute "untar kafkatoolbox binary" do
  cwd node["kafkatoolbox"]["base_dir"]
  command "tar zxf #{node["kafkatoolbox"]["kafkatools_cache_dir"]}/#{binFileName}"
  not_if do
    File.exists? File.join node["kafkatoolbox"]["base_dir"], toolboxDirname
  end
end

link node["kafkatoolbox"]["install_dir"] do
  owner 'root'
  group 'root'
  to File.join node["kafkatoolbox"]["base_dir"], toolboxDirname
end

