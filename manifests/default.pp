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


#include postgresql::server
#include postgresql::python
#include python::dev
#class { "python::dev": version => "2.7" }
#include python::venv
#include python::gunicorn


# setuptools ()
# pip (dev: easy_install)
# rabbitmq-server (dev: brew)
#	- to start on login:
#		mkdir -p ~/Library/LaunchAgents
#    	cp /usr/local/Cellar/rabbitmq/2.7.1/com.rabbitmq.rabbitmq-server.plist ~/Library/LaunchAgents/
#    	launchctl load -w ~/Library/LaunchAgents/com.rabbitmq.rabbitmq-server.plist
#    - 


# redis (dev: brew)
# nginx (dev: brew)
