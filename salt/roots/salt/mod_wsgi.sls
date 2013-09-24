include:
    - systemwide
    - python_install
#
# Needed for mod_wsgi to be compiled with the newest python
#
/home/vagrant/install_mod_wsgi.sh:
    file.managed:
        - order: last
        - source: salt://scripts/install_mod_wsgi.sh
        - user: vagrant
        - group: vagrant
        - mode: 755
        - makedirs: True

# Have to use the sed command to strip out windows carrige returns
mod_wsgi:
  cmd.run:
    # Ensure this first step only completes after the entire python.sls file
    - require:
        - sls: python_install
        - sls: systemwide
        - file: /home/vagrant/install_mod_wsgi.sh
    - name: cat install_mod_wsgi.sh | sed 's/\r$//' | bash
    - cwd: /home/vagrant
    - user: root
