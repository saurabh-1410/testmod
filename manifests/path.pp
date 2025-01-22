# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include testmod::path
class testmod::path {
exec { 'show_path':
  command => '/usr/bin/echo $PATH > /tmp/puppet_path',
}
exec { " toto create_mount_point":
command => "touch /opt/hello",
unless => "test -d /opt",
}
}
