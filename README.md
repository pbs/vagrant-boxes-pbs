Vagrant boxes for PBS
=====================

How to build the box
--------------------

We use [Vagrant](http://vagrantup.com) to quickly assemble repeatable
development environments.  In order to spin up a new dev box install Vagrant as
described [here](http://docs.vagrantup.com/v2/installation/index.html)

Install the vagrant salt plugin

    vagrant plugin install vagrant-salt

Then start up the vagrant virtual machine

    vagrant up

This will create a new virtual machine, install and setup everything needed to
have a basic development box.

Package the box using

    vagrant package --output PBS-CentOS-6.4-x86_64-v20130731.box

Based on
--------

[NREL Vagrant Boxes](https://github.com/NREL/vagrant-boxes)


