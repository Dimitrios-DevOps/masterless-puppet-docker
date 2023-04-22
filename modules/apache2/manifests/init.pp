class apache2::init (
  $port = '8080'
) {

  group { 'apache':
    ensure => present
  }

  user { 'apache':
    ensure => present,
    groups => ['apache']
  }

  class { 'apache':
    default_vhost => false,
  }

  apache::vhost { "localhost:$port":
    port          => $port,
    docroot       => '/var/www/html',
    docroot_owner => 'apache',
    docroot_group => 'apache',
  }
}