node default{
  host {'localhost.localdomain':
    ensure => present,
    target => '/etc/hosts',
    ip => '127.0.0.1',
    host_aliases => 'localhost'
  }
  
  host {$hostname:
    ensure => present,
    target => '/etc/hosts',
    ip => $ipaddress,
  }
  
  notice($::dep_man_name)
  
  class {"dc_depman":
    depManName => $::dep_man_name
  }
}