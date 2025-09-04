#class testmod {

#comment 1
#comment 2

class testmod (
  Array  $host_aliases  = [],
  String $ip,
  String $target        = '/etc/hosts',
) {
  host { 'localhost':
    ensure       => $ensure,
    host_aliases => $host_aliases,
    ip           => $ip,
    target       => $target,
  }

  file { '/tmp/file1':
    ensure  => file,
    content => 'Hello testmod1234',
    noop    => false,
  }

  service { 'chronyd.service' :
    ensure => running,
    enable => true,
  }
}
