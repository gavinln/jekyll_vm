# Install python and compiled modules for project
class python {
    case $operatingsystem {
        ubuntu: {
            # may need to install openbox for gui
            package { ["python-pip"]:
                    ensure => installed;
            }
            package { ['virtualenv']:
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { ['Pygments']:
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
        }
    }
}
