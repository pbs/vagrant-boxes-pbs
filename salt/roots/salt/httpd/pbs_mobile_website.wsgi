import os

# This will activate the virtualenv. See activate_this file for more info.
path_to_activate = '/home/mobileweb/deployed/bin/activate_this.py'
execfile(path_to_activate, dict(__file__=path_to_activate))

# Now we need to configure the actual wsgi application
os.environ['DJANGO_SETTINGS_MODULE'] = 'pbs_mobile_website.settings'

import django.core.handlers.wsgi

application = django.core.handlers.wsgi.WSGIHandler()
