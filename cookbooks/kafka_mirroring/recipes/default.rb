# could be improved to run only on update

package ['kafkaMirroring','kafkaMirroringConfig'] do
  version node['kafkaMirroring']['version']
  action :install
end

template "/opt/inmobi/bin/KafkaMirroring/conf.sh" do
  source "conf.sh.erb"
  owner "root"
  owner "root"
  mode "0644"
  colo = node['fqdn'].split(".")[-3]
  variables(
    :colo => colo
    :instance_id => node['kafkaMirroring']['instanceid'][colo][node['hostname']]
  )
end
