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

}
