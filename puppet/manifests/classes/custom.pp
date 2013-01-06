# You can add custom puppet manifests for your app here.
class custom {
    package { ["xserver-xorg", "lightdm-gtk-greeter", "lxde-core", "xinit"]:
        ensure => present
    }
    $misc_packages = ["smbfs", "xvfb", "firefox", "openjdk-7-jre"]
    package { $misc_packages:
        ensure => present,
    }
}
