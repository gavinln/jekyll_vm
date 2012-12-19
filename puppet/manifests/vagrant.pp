#
# puppet magic for dev boxes
#
import "classes/*.pp"

$PROJ_DIR = "/vagrant"
$HOME_DIR = "/home/vagrant"

Exec {
    path => "/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin",
}

class dev {
    class {
        init: ;
        python: require => Class[init];
#        openbox: require => Class[init];

#        ipython_notebook: require => Class[python];
#        robot: require => Class[python];
    }
}

include dev
