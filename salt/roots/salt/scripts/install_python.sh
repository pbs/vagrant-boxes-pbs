#!/bin/bash
# adapted from
# http://toomuchdata.com/2012/06/25/how-to-install-python-2-7-3-on-centos-6-2/
#

#yum -y groupinstall "Development tools"
#yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel

# python 2.7
rm -rf /tmp/pythontmp
mkdir /tmp/pythontmp
cd /tmp/pythontmp
#wget http://www.python.org/ftp/python/2.7.5/Python-2.7.5.tar.bz2
#tar xf Python-2.7.5.tar.bz2
#cd Python-2.7.5
#./configure --prefix=/usr/local --enable-shared
#make && make altinstall

# now add the shared libraries to the system
sed -i '$ a\/usr/local/lib' /etc/ld.so.conf
ldconfig

# distribute
rm -rf /tmp/distributetmp
mkdir /tmp/distributetmp
cd /tmp/distributetmp
#wget https://pypi.python.org/packages/source/d/distribute/distribute-0.6.49.tar.gz --no-check-certificate
#tar xf distribute-0.6.49.tar.gz
#cd distribute-0.6.49
#python2.7 setup.py install

# virtualenv
#easy_install-2.7 virtualenv
#virtualenv-2.7 --distribute /home/vagrant/virtualenv
#chown -R vagrant:vagrant /home/vagrant/virtualenv