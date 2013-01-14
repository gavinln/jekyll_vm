# install jenkins & jenkins plugins
class jenkins {
    include apt
#    package {"openjdk-6-jre-headless":
#        ensure => installed;
#    }
    apt::key {"D50582E6":
        source  => "http://pkg.jenkins-ci.org/debian-stable/jenkins-ci.org.key",
    }
    apt::sources_list {"jenkins":
        ensure  => "present",
        content => "deb http://pkg.jenkins-ci.org/debian-stable binary/",
        require => Apt::Key["D50582E6"],
    }
    package {"jenkins":
        ensure  => "installed",
        require => Apt::Sources_list["jenkins"],
    }
    service {"jenkins":
        enable  => true,
        ensure  => "running",
        hasrestart=> true,
        require => Package["jenkins"],
    }
    jenkins_plugin {
        "git":
        version => "1.1.19",
        require => Package["jenkins"],
    }
}

