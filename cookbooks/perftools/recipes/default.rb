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

%w{svc_cachestat toolsbin}.each do |dir|
 directory "#{node["perftools"]["base_dir"]}/#{dir}" do
   owner 'root'
   group 'root'
   mode '0755'
   action :create
 end
end

cookbook_file "#{node["perftools"]["base_dir"]}/toolsbin/send_cachehitratio.py" do
  source "send_cachehitratio.py"
  mode "0655"
end

directory "#{node["perftools"]["base_dir"]}/svc_cachestat/log" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

cookbook_file "#{node["perftools"]["base_dir"]}/svc_cachestat/run" do
  source "svc_run"
  mode "0755"
end

cookbook_file "#{node["perftools"]["base_dir"]}/svc_cachestat/log/run" do
  source "svc_log_run"
  mode "0755"
end

link "/service/svc_cachehitratio" do
  to "/usr/local/perftools/svc_cachestat"
  link_type :symbolic
end

directory "/service/svc_cachehitratio/log/main" do
  owner 'nobody'
  group 'nogroup'
  mode '0755'
  action :create
end
