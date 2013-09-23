#
# To help debug these salt scripts, once the vm is up and running you
# can run:
#    sudo su -
#    salt-call --local state.highstate -l debug
# to see a debug session
#
# Note that these items are not necessarily executed in order
#
base:
    '*':
        - systemwide
        - services
        - python_files
        - python
