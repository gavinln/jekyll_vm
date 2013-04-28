# install rvm

# see https://github.com/blt04/puppet-rvm for help
class installrvm {
    include rvm
    rvm::system_user { vagrant: ; }

    if $rvm_installed == "true" {
        rvm_system_ruby {'ruby-1.9.3-p392':
              ensure => 'present';
        }
        rvm_gem {'jekyll':
            name => 'jekyll',
            ruby_version => 'ruby-1.9.3-p392',
            ensure => latest,
            require => Rvm_system_ruby['ruby-1.9.3-p392'];
        }
   }
}
