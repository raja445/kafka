colo = node['domain'].split(".")[-3]
elasticsearchInstallDir="#{node["elasticsearch"]["base_dir"]}/elasticsearch-client-#{node["elasticsearch"]["version"]}"
elasticsearchTmp="/tmp/elasticsearch-#{node["elasticsearch"]["version"]}.tar.gz"
elasticsearchTmpDir="/tmp/elasticsearch-client"
elasticsearchHome="#{node["elasticsearch"]["base_dir"]}/elasticsearch-client"
elasticsearchConf="#{elasticsearchInstallDir}/config"
lockFile="#{elasticsearchInstallDir}/LOCK"
supervisordir="/etc/supervisor/conf.d"

directory "#{elasticsearchInstallDir}" do
  action :create
  owner 'gridops'
  mode 00755
end

directory "#{elasticsearchTmpDir}" do
  action :create
  owner 'gridops'
  mode 00755
end

%w[/data/elasticsearch /var/log/elasticsearch].each do |path|
  directory path do
    owner 'gridops'
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
  owner 'gridops'
  to "#{elasticsearchInstallDir}"
  link_type :symbolic
end

template "#{elasticsearchConf}/elasticsearch.yml" do
   source "elasticsearch.yml.erb"
   owner "gridops"
   mode 00644
   variables(
      :fqdn => node['fqdn'],
      :elastic_data_nodes =>node["elasticsearch"]["data_nodes"][colo],
      :min_masters =>node["elasticsearch"]["minimum_master_node"][colo]
)

end

cookbook_file "#{supervisordir}/elasticsearch-client.conf" do
    source "elasticsearch-client.conf"
    owner "gridops"
    mode "644"
end

cookbook_file "#{elasticsearchConf}/log4j2.properties" do
    source "log4j2.properties"
    owner "gridops"
    mode "644"
end

cookbook_file "#{elasticsearchConf}/jvm.options" do
    source "jvm.options"
    owner "gridops"
    mode "644"
end
