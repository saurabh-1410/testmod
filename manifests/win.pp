class testmod::win (
  Boolean $noop = $clientnoop 
 )
  {

  exec { 'create_file':
        command     => 'New-Item -Path "C:\Users\saurabh_dikshit\Desktop\file1" -ItemType "file" -Force',
        provider    => powershell,
        logoutput   => true,
        noop        => $noop,
        tag         => 'foo'
    }

  exec { 'join_domain':
        environment => [ "Password=abcd1234" ],
        command   => 'cat /etc/profile',
        unless   => 'if((Get-WmiObject -Class Win32_ComputerSystem).domain -ne ${domain}){exit 1}',
        provider  => powershell,
       }
  }
