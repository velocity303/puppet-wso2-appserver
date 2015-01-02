define wso2appserver::deployapp (
  $path       = "${::wso2appserver::params::install_dir}/wso2as-5.2.0/repository/deployment/server/webapps",
  $war_source = undef,
) {
  staging::file {"${name}":
     source => $war_source,
     target => "${path}/${name}",
  }
}
