class haproxy::init {

  package { 'haproxy':
    name    => 'haproxy',
    ensure  => installed
  }

  service { 'haproxy':
    ensure     => running,
    enable     => true,
  }
}