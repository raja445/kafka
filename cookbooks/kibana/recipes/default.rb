colo = node['domain'].split(".")[-3]
kibanaInstallDir="#{node["kibana"]["base_dir"]}/kibana-#{node["kibana"]["version"]}"
kibanaTmp="/tmp/kibana-#{node["kibana"]["version"]}-linux-x86_64.tar.gz"
kibanaTmpDir="/tmp/kibana"
kibanaHome="#{node["kibana"]["base_dir"]}/kibana"
kibanaConf="#{kibanaInstallDir}/config"
lockFile="#{kibanaInstallDir}/LOCK"
supervisordir="/etc/supervisor/conf.d"

directory "#{kibanaInstallDir}" do
  action :create
  owner 'gridops'
  mode 00755
end

directory "#{kibanaTmpDir}" do
  action :create
  owner 'gridops'
  mode 00755
end

%w[/data/kibana /var/log/kibana].each do |path|
  directory path do
    owner 'gridops'
    mode '0755'
    action :create
  end
end

remote_file "#{kibanaTmp}" do
  action :create_if_missing
  source node["kibana"]["download_url"]
  backup false
end

execute "untar kibana binary" do	
  cwd kibanaTmpDir
  command "tar -xvf #{kibanaTmp}; mv kibana-#{node["kibana"]["version"]}/* #{kibanaInstallDir}/"
  not_if do
    File.exists? "#{lockFile}"
  end
end

execute "Create Lock file" do
  command "touch #{lockFile}"
  not_if do
    File.exists? "#{lockFile}"
  end
end

link "#{kibanaHome}" do
  owner 'gridops'
  to "#{kibanaInstallDir}"
  link_type :symbolic
end

cookbook_file "#{supervisordir}/kibana.conf" do
    source "kibana.conf"
    owner "gridops"
    mode "644"
end
