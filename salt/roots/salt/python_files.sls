#
# Needed for systemwide python 2.7 setup
#
/home/vagrant/install_python.sh:
    file.managed:
        - source: salt://scripts/install_python.sh
        - user: vagrant
        - group: vagrant
        - mode: 755
        - makedirs: True

/home/vagrant/.bashrc:
    file.append:
        - user: vagrant
        - group: vagrant
        - text:
            - export LD_LIBRARY_PATH=/usr/local/lib
            - source ~/virtualenv/bin/activate
            - cd /vagrant/
