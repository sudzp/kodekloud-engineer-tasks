#
# Create a puppet programming on puppet master node. 
# Within the programming file define a custom class ntpconfig to install and configure ntp server
# Add NTP Server server 1.south-america.pool.ntp.org in default configuration file also remember to use iburst option for faster synchronization at startup.
# Please note that do not try to start/restart/stop ntp service,

class ntpconfig {

   package {'ntp':
      ensure => 'present'
   }

   file {'/etc/ntp.conf':
      ensure=> 'present',
      content=> 'server 1.south-america.pool.ntp.org iburst'
   }
}

node 'app.example.com' {
      include ntpconfig
}
