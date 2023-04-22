class roles::service::haproxy {

  class { 'haproxy::init': }

  file { '/etc/haproxy/haproxy.cfg':
    source  => 'puppet:///modules/roles/haproxy/etc/haproxy/haproxy.cfg',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Package['haproxy'],
    notify  => Service['haproxy'],
  }
}

