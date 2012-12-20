# install rvm

class installrvm {
  include rvm
  rvm::system_user { vagrant: ; }

  if $rvm_installed == "true" {
    rvm_system_ruby {
      'ruby-1.9.3-p327':
        ensure => 'present';
    }
  }
}

