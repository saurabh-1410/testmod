class testmod {

file { '/tmp/file1':
  ensure  => file,
  content => 'Hello testmod',
  noop    => false,
}

}
