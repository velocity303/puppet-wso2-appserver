class wso2appserver::install (
  $install_dir = $::wso2appserver::install_dir,
  $source      = $::wso2appserver::source,
  $java_home   = $::wso2appserver::java_home,
  $wso2_user   = $::wso2appserver::wso2_user,
  $service     = $::wso2appserver::service,
) {
  file { $install_dir:
    ensure  => directory,
    mode    => '0644',
    owner   => $wso2_user,
  }
  file { "/etc/init.d/${service}":
    ensure  => present,
    content => template('wso2appserver/appserver-init.erb'),
    mode    => '0755',
    owner   => $wso2_user,
  }
  staging::deploy { 'wso2as.zip':
    source  => $source,
    target  => $install_dir,
    user    => $wso2_user,
    creates => "${install_dir}/wso2as-5.2.0",
  }
}
