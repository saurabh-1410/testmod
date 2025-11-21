class profile::sce_linux {
  notify { 'HELLO_FROM_profile::sce_linux':
    message => 'HELLO_FROM_profile::sce_linux',
  }

  class { '::sce_linux':
    benchmark => 'cis',
    config    => {
      profile => 'server',
      level   => '1',
      only    => [
        'ensure_selinux_is_installed',
        'ensure_selinux_is_not_disabled_in_bootloader_configuration',
        'ensure_the_selinux_mode_is_not_disabled',
        'ensure_selinux_policy_is_configured',
        'ensure_the_selinux_mode_is_enforcing',
        'ensure_permissions_on_etc_crontab_are_configured',
        'ensure_permissions_on_etc_cron_hourly_are_configured',
      ],
    }
  }
  file { '/tmp/cis_profile_probe':
    ensure  => file,
    content => "ok\n",
  }
}
