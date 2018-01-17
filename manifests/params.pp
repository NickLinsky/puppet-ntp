class ntp::params {
  $package_name = 'ntp'
  $package_ensure = 'present'
  $config_name    = 'ntp.conf'
  $config_filemode    = '0664'
  $servers = ['0.centos.post.ntp.org','1.centos.pool.ntp.org']
  $service_ensure = 'running'
  $service_running = true
  $service_hasrestart = true
  $service_hasstatus = true

  $service_name = $facts['os']['family'] ? {
    'Debian' => 'ntp',
    default  => 'ntpd',
  }
}
