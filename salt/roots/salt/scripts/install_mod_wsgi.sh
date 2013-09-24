#!/bin/bash
#
# compile and install mod_wsgi using the new python installed in the
# virtualenv

rm -rf /tmp/mod_wsgi_tmp
mkdir /tmp/mod_wsgi_tmp
cd /tmp/mod_wsgi_tmp
wget https://modwsgi.googlecode.com/files/mod_wsgi-3.4.tar.gz
tar xvfz mod_wsgi-3.4.tar.gz
cd mod_wsgi-3.4
./configure --with-python=/home/vagrant/virtualenv/bin/python
make
make install
