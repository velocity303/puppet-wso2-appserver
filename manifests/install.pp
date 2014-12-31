class wso2appserver::install (
  $install_dir = $::wso2appserver::install_dir,
  $source      = $::wso2appserver::source,
  $java_home   = $::wso2appserver::java_home,
  $wso2_user   = $::wso2appserver::wso2_user,
  $service     = $::wso2appserver::service,
) {
  file { $install_dir:
    ensure => directory,
    mode   => 755,
  }
  file { "/etc/init.d/${service}":
     ensure  => present,
     content => template('wso2appserver/appserver-init.erb'),
  }
  staging::deploy { 'wso2as.zip':
    source  => 'http://dist2.wso2.org/products/application-server/5.2.0/wso2as-5.2.0.zip',
    target  => $install_dir,
    creates => "${install_dir}/wso2as-5.2.0",
  }
}
