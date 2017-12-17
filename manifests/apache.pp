class profile::apache(
  Boolean $defaultvhost = false,
  Integer $port = 80,
  String $docroot = '/var/www/html/test'
) {
  class { '::apache':
    default_vhost => $default_vhost,

  }
  ::apache::vhost {'andrey3.mylab.com':
    port => $port,
    docroot => $docroot,

  }

}
