class testmod {

file { '/tmp/file1':
  ensure  => present,
  content => 'Hello testmod',
  noop    => false,
}

service { 'chronyd.service' :
  ensure => stopped,
  enable => true,
}

}
