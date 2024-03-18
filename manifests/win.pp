class testmod::win {

  exec { 'create_file':
        command     => 'New-Item -Path "C:\Users\saurabh_dikshit\Desktop\file1" -ItemType "file" -Force',
        provider    => powershell,
        logoutput   => true,
    }

  exec { 'join_domain':
        environment => [ "Password=${_password}" ],
        command   => 'exit 1',
        unless   => 'if((Get-WmiObject -Class Win32_ComputerSystem).domain -ne ${domain}){exit 1}',
        provider  => powershell,
       }
}
