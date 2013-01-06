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
        python: require => Class[init];
        custom: require => Class[init];
    }
    include installrvm
}

include dev
