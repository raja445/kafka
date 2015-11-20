# Create user and group
  group node['kafka_manager']['group'] do
    action :create
  end

  user node['kafka_manager']['user'] do
    gid node['kafka_manager']['group']
  end


  directory node['kafka_manager']['install_dir'] do
    owner node['kafka_manager']['user']
    group node['kafka_manager']['group']
    mode "0755"
  end


# Download and extract
  kafka_manager_dir = "kafka-manager-#{node['kafka_manager']['version']}"
  kafka_manager_archive = "#{kafka_manager_dir}.zip"
  remote_file ::File.join(Chef::Config['file_cache_path'], kafka_manager_archive) do
    Chef::Log.info("Installing file '#{kafka_manager_archive}' from site '#{node['kafka_manager']['mirror']}'")
    owner "root"
    mode "0644"
    source ::File.join(node['kafka_manager']['mirror'], "#{node['kafka_manager']['version']}/#{kafka_manager_archive}")
    action :create
  end

  execute 'install kafka_manager' do
    cwd Chef::Config['file_cache_path']
    command "chown -R root:root '#{node['kafka_manager']['install_dir']}' && " +
            "unzip -u '#{kafka_manager_archive}' -d '#{node['kafka_manager']['install_dir']}' && " +
            "chown -R #{node['kafka_manager']['user']}:#{node['kafka_manager']['group']} '#{node['kafka_manager']['install_dir']}'"
  end

  link_path = ::File.join(node['kafka_manager']['install_dir'], "current")
  Chef::Log.info("Creating #{link_path}")

  link link_path do
    owner node['kafka_manager']['user']
    group node['kafka_manager']['group']
    to ::File.join(node['kafka_manager']['install_dir'], kafka_manager_dir)
  end

  # Startup script
  service_name = "kafka-manager"
  template "/etc/init/#{service_name}.conf" do
    source "upstart.conf.erb"
    variables({
                  :user => node['kafka_manager']['user'],
                  :group => node['kafka_manager']['group'],
                  :install_dir => node['kafka_manager']['install_dir'],
                  :command_suffix => node['kafka_manager']['log_to_syslog'].to_s == "1" ? "2>&1 | logger -t #{service_name}" : "",
                  :port => node["kafka_manager"]["port"],
              })
  end

  template "#{node['kafka_manager']['install_dir']}/current/conf/application.conf" do
    source "application.conf.erb"
    variables({})
  end

  service "kafka-manager" do
    provider Chef::Provider::Service::Upstart
    supports :restart => true, :start => true, :stop => true
    action [:enable, :restart]
  end

  package "nginx" do
    version node['nginx']['version']
    action :install
    options '--force-yes'
  end

  template "/etc/nginx/conf.d/localhost.conf" do
    source "localhost.conf.erb"
    notifies :restart, "service[nginx]"
  end

  template "/etc/nginx/conf.d/proxy.conf" do
    source "proxy.conf.erb"
    notifies :restart, "service[nginx]"
  end

  template "/etc/nginx/.htpasswd" do
    source "htpasswd.erb"
    notifies :restart, "service[nginx]"
  end

  service "nginx" do
    action [:enable, :start]
  end
