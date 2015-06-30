# could be improved to run only on update

package ['kafkaMirroring','kafkaMirroringConfig'] do
  action :upgrade
end

template "/opt/inmobi/bin/KafkaMirroring/conf.sh" do
  source "conf.sh.erb"
  owner "root"
  owner "root"
  mode "0644"
  variables(
    :colo => node['fqdn'].split(".")[-3],
    :instance_id => node['kafkaMirroring']['instanceid'][node['hostname']]
  )
end
