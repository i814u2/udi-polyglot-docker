import pip
import subprocess

for dist in pip.get_installed_distributions():
    call_str = "pip install --user --upgrade {0}".format(dist.project_name)
    print
    print "Upgrading {}".format(dist.project_name)
    subprocess.call(call_str, shell=True)
