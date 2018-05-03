#NRPE settings
node.default['nrpe']['settings']['log_facility'] = 'daemon'
node.default['nrpe']['settings']['pid_file'] = '/var/run/nagios/nrpe.pid'
node.default['nrpe']['settings']['server_port'] = '5666'
node.default['nrpe']['settings']['nrpe_user'] = 'nagios'
node.default['nrpe']['settings']['nrpe_group'] = 'nagios'
node.default['nrpe']['settings']['allowed_hosts'] = '192.168.1.111'
node.default['nrpe']['settings']['dont_blame_nrpe'] = '0'
node.default['nrpe']['settings']['allow_bash_command_substitution'] = '0'
node.default['nrpe']['settings']['debug'] = '0'
node.default['nrpe']['settings']['command_timeout'] = '60'
node.default['nrpe']['settings']['connection_timeout'] = '300'


#NRPE commmands

#users
node.default['nrpe']['commands']['check_users_warn'] = '5'
node.default['nrpe']['commands']['check_users_crit'] = '10'

#load
node.default['nrpe']['commands']['check_load_warn'] = '15,10,5'
node.default['nrpe']['commands']['check_load_crit'] = '30,25,20'

#hard drive
node.default['nrpe']['commands']['check_disk_path'] = '/dev/sda1'
node.default['nrpe']['commands']['check_disk_warn'] = '20%'
node.default['nrpe']['commands']['check_disk_crit'] = '10%'

#zombi procs
node.default['nrpe']['commands']['check_zombie_procs_s'] = 'Z'
node.default['nrpe']['commands']['check_zombie_procs_warn'] = '5'
node.default['nrpe']['commands']['check_zombie_procs_crit'] = '10'

#total procs
node.default['nrpe']['commands']['check_procs_warn'] = '150'
node.default['nrpe']['commands']['check_procs_crit'] = '200'
