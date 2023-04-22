class roles::service::appserver (
  $port = '8080'
) {

  class { 'apache2::init':
    port => $port
  }

  file { '/var/www/html/index.html':
    content  => template('roles/appserver/var/www/html/index.html.erb'),
    owner   => 'apache',
    group   => 'apache',
    mode    => '0644',
  }
}