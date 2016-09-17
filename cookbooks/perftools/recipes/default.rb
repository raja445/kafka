# coding: UTF-8
perfbin = "#{node["perftools"]["base_dir"]}/perf-tools-master/bin"
remote_file "#{node["perftools"]["zipfile_path"]}" do
  action :create_if_missing
  source node["perftools"]["download_url"]
  mode 00644
  backup false
end

directory "#{node["perftools"]["base_dir"]}" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute "unzip perftools binary" do
  cwd node["perftools"]["base_dir"]
  command "unzip #{node["perftools"]["zipfile_path"]}"
  not_if do
    File.exists? "#{node["perftools"]["base_dir"]}/perf-tools-master"
  end
end

cookbook_file "#{perfbin}/cachestat" do
  source "cachestat"
  mode "0655"
end

link "/usr/bin/cachestat" do
  to "#{perfbin}/cachestat"
  link_type :symbolic
end

