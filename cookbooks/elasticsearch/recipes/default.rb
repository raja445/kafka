elasticsearchInstallDir="#{node["elasticsearch"]["base_dir"]}/elasticsearch-#{node["elasticsearch"]["version"]}"
elasticsearchTmp="/tmp/elasticsearch-#{node["elasticsearch"]["version"]}.tar.gz"
elasticsearchTmpDir="/tmp/elasticsearch"
elasticsearchHome="#{node["elasticsearch"]["base_dir"]}/elasticsearch"
elasticsearchConf="#{elasticsearchInstallDir}/conf"
lockFile="#{elasticsearchInstallDir}/LOCK"

directory "#{elasticsearchInstallDir}" do
  action :create
  owner 'root'
  mode 00755
end

directory "#{elasticsearchTmpDir}" do
  action :create
  owner 'root'
  mode 00755
end

%w[/data/elasticsearch /var/log/elasticsearch].each do |path|
  directory path do
    owner 'root'
    mode '0755'
    action :create
  end
end

remote_file "#{elasticsearchTmp}" do
  action :create_if_missing
  source node["elasticsearch"]["download_url"]
  backup false
end

execute "untar elasticsearch binary" do
  cwd elasticsearchTmpDir
  command "tar -xvf #{elasticsearchTmp}; mv elasticsearch-#{node["elasticsearch"]["version"]}/* #{elasticsearchInstallDir}/"
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

link "#{elasticsearchHome}" do
  owner 'root'
  to "#{elasticsearchInstallDir}"
  link_type :symbolic
end
