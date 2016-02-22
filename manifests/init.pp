
class system_update {

Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

  exec { 'apt-get update':
    command => 'apt-get update',

  }

  $sysPackages = [ "build-essential" ]
  package { $sysPackages:
    ensure => "present",
    require => Exec['apt-get update'],
  }
}
