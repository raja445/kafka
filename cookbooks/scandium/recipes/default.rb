package ['scandium'] do
  version node['scandium']['version']
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
