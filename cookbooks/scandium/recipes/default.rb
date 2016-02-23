package ['Scandium','ScandiumConfig'] do
  version [node['Scandium']['version'],node['ScandiumConfig']['version']]
  options '--force-yes'
  action :install
end

#
template "/opt/inmobi/bin/Scandium/conf.sh" do
  source "conf.sh.erb"
  owner "root"
  owner "root"
  mode "0644"
  colo = node['domain'].split(".")[-3]
  variables(
    :colo => colo,
  )
end
template "/opt/inmobi/config/ScandiumConfig/conf.sh" do
  source "conf.sh.erb"
  owner "root"
  owner "root"
  mode "0644"
  colo = node['domain'].split(".")[-3]
  variables(
    :colo => colo,
  )
end
