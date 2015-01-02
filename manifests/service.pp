class wso2appserver::service (
  $install_dir = $::wso2appserver::install_dir,
  $source      = $::wso2appserver::source,
  $java_home   = $::wso2appserver::java_home,
  $wso2_user   = $::wso2appserver::wso2_user,
  $service     = $::wso2appserver::service,
) {
  service { $service:
    ensure  => running,
    require => Class['wso2appserver::configure'],
    status  => "kill -0 `cat ${install_dir}/wso2as-5.2.0/wso2carbon.pid`"
  }
}
