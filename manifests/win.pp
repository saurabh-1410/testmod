class testmod::win {

  exec { 'create_file':
        command     => 'New-Item -Path "C:\Users\saurabh_dikshit\Desktop\file1" -ItemType "file" -Force',
        provider    => powershell,
        logoutput   => true,
    }
}
