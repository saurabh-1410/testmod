#class testmod {

#file { '/tmp/file1':
#  ensure  => present,
#  content => 'Hello testmod',
#  noop    => false,
#}
#
#service { 'chronyd.service' :
#  ensure => stopped,
#  enable => true,
#}

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
}

