#
# Cookbook:: nrpe
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#update the system

settings = node['nrpe']['settings']
commands = node['nrpe']['commands']

apt_update 'update' do
       action :update
end

#install nrpe
package 'nagios-nrpe-server'
package 'nagios-plugins-basic'

template "/etc/nagios/nrpe.cfg" do
  source 'nrpe_cfg.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables({
    :log_facility=> "#{settings['log_facility']}",
    :pid_file=> "#{settings['pid_file']}",
    :server_port=> "#{settings['server_port']}",
    :nrpe_user=> "#{settings['nrpe_user']}",
    :nrpe_group=> "#{settings['nrpe_group']}",
    :allowed_hosts=> "#{settings['allowed_hosts']}",
    :dont_blame_nrpe=> "#{settings['dont_blame_nrpe']}",
    :allow_bash_command_substitution=> "#{settings['allow_bash_command_substitution']}",
    :debug=> "#{settings['debug']}",
    :command_timeout=> "#{settings['command_timeout']}",
    :connection_timeout=> "#{settings['connection_timeout']}",
    :check_users_warn=> "#{commands['check_users_warn']}",
    :check_users_crit=> "#{commands['check_users_crit']}",
    :check_load_warn=> "#{commands['check_load_warn']}",
    :check_load_crit=> "#{commands['check_load_crit']}",
    :check_hd=> "#{commands['check_disk_path']}",
    :check_disk_warn=> "#{commands['check_disk_warn']}",
    :check_disk_crit=> "#{commands['check_disk_crit']}",
    :check_zombie_procs_s=> "#{commands['check_zombie_procs_s']}",
    :check_zombie_procs_warn=> "#{commands['check_zombie_procs_warn']}",
    :check_zombie_procs_crit=> "#{commands['check_zombie_procs_crit']}",
    :check_procs_warn=> "#{commands['check_procs_warn']}",
    :check_procs_crit=> "#{commands['check_procs_crit']}"
  })
end

execute 'nrpe' do
  command '/etc/init.d/nagios-nrpe-server restart'
end
