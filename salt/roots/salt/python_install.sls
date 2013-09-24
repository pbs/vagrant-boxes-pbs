
# Have to use the sed command to strip out windows carrige returns
python:
  cmd.run:
    - name: cat install_python.sh | sed 's/\r$//' | bash
    - cwd: /home/vagrant
    - user: root
    - watch:
        - file: /home/vagrant/install_python.sh
