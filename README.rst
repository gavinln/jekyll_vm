=========
jekyll_vm
=========

:Info: See `github <https://github.com/gavinln/jekyll_vm.git>`_ for the latest source.
:Author: Gavin Noronha <gavinln@hotmail.com>

About
=====

This project demonstrates the following technologies.

    #. Vagrant vm
    #. Puppet to install all software
    #. Python
    #. Ruby
    #. Jekyll bootstrap

Running
=======

#. To start the virtual machine(VM) type::

    vagrant up

#. To install rvm and gems need to provision again::

    vagrant provision

#. Connect to the VM::

    REM on windows
    vm\ssh_vagrant.bat
    or
    python vm\ssh_vagrant.py

    # on unix
    vagrant ssh

#. To list the installed rubies::

    rvm list

#. To setup the current shell to use a specific version::

    rvm use ruby-1.9.3-p327

#. Clone the **jekyll-bootstrap** project::

    cd /vagrant/jekyll
    git clone https://github.com/plusjade/jekyll-bootstrap.git
    cd jekyll-bootstrap

#. Start the jekyll server::

    jekyll --server

#. Open the jekyll blog in a browser at `<http://localhost:4000/>`_::

Requirements
------------

- `Oracle VM VirtualBox <https://www.virtualbox.org/>`_
- `Vagrant <http://vagrantup.com/>`_
- `Git <http://git-scm.com/>`_

Testing
-------
Need to create testing scripts.

Credits
=======

Thanks to (in no particular order):

- Glen Noronha

