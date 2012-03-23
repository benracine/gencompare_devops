# Basic Puppet Apache manifest

group { "puppet":
        ensure => "present",
}

class apache {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update'
  }
 package { "apache2":
   ensure => present,
 }
 service { "apache2":
   ensure => running,
   require => Package["apache2"],
 }
}
include apache

notify { "This message is getting logged on the agent node.": }

notify { "Mac warning":
    message => $operatingsystem ? {
        'Darwin' => "This seems to be a Mac.",
        default => "And I'm a PC.",
    },
}

