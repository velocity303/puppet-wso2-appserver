class wso2appserver::configure (
  $install_dir = $::wso2appserver::install_dir,
  $source      = $::wso2appserver::source,
  $java_home   = $::wso2appserver::java_home,
  $wso2_user   = $::wso2appserver::wso2_user,
  $service     = $::wso2appserver::service,
) {
  firewall { '102 allow connections to wso2':
    proto   => 'tcp',
    dport   => '9443',
    action  => 'accept',
    require => Class['wso2appserver::install'],
  }
}
