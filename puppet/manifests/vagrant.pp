#
# puppet magic for dev boxes
#
import "classes/*.pp"

$PROJ_DIR = "/vagrant"
$HOME_DIR = "/home/vagrant"

Exec {
    path => "/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin",
}

stage { 'req-install': before => Stage['rvm-install'] }

class dev {
    class {
        init: stage => 'req-install';
        installrvm: require => Class[init];
        python: require => Class[init];
    }
}

include dev
