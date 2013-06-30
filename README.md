jekyll_vm
=========

* Source code - [Github][1]
* Author - Gavin Noronha - <gavinln@hotmail.com>

[1]: https://github.com/gavinln/jekyll_vm.git

About
=====

This project provides a [Ubuntu (12.0)][2] [Vagrant][3] Virtual Machine (VM) that uses [RVM][4] to create a [Ruby][5] environment. It also includes the following libaries


* [jekyll-bootstrap][6] - a Ruby blogging gem
* [Pygments][7] - a Python syntax highlighter

There are [Puppet][8] scripts that automatically install the software when the VM is started.

[2]: http://releases.ubuntu.com/precise/
[3]: http://www.vagrantup.com/
[4]: https://rvm.io/ 
[5]: http://www.ruby-lang.org/en/ 
[6]: http://jekyllbootstrap.com/
[7]: http://pygments.org/
[8]: http://puppetlabs.com/

Running
=======

1. To start the virtual machine(VM) type

    ```
    vagrant up
    ```

2. To install rvm and gems need to provision again

    ```
    vagrant provision
    ```

3. Connect to the VM

    ```
    vagrant ssh
    ```

4. To list the installed rubies

    ```bash
    rvm list
    ```

5. To setup the current shell to use a specific version

    ```bash
    rvm use ruby-1.9.3-p392
    ```
    
6. Verify the version of ruby installed (should show verion in step 5)
 
    ```bash
    ruby -v
    ```

7. Clone the `jekyll-bootstrap` project

    ```bash
    cd /vagrant/jekyll
    git clone https://github.com/plusjade/jekyll-bootstrap.git
    cd jekyll-bootstrap
    ```

8. Start the `jekyll` server

    ```bash
    jekyll --server
    ```

9. Open the jekyll blog in a browser at <http://localhost:4000/>


Requirements
------------

The following software is needed to get the software from github and run Vagrant to set up the Ruby environment. The Git environment also provides an [SSH  client][9] for Windows.

* [Oracle VM VirtualBox][10]
* [Vagrant][11]
* [Git][12]

[9]: http://en.wikipedia.org/wiki/Secure_Shell
[10]: https://www.virtualbox.org/
[11]: http://vagrantup.com/
[12]: http://git-scm.com/

Credits
=======

Thanks to (in no particular order):

- Glen Noronha

