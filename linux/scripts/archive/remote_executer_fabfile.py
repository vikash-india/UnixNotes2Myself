# A fab file for executing commands on remote Linux hosts

from fabric.api import env
from fabric.api import run
import paramiko
import socket

env.use_ssh_config = True
env.user = 'vikash'

def is_host_up(host, port):

    # Set the timeout
    original_timeout = socket.getdefaulttimeout()
    new_timeout = 3
    socket.setdefaulttimeout(new_timeout)
    host_status = False
    try:
        transport = paramiko.Transport((host, port))
        host_status = True
    except:
        print("***Warning*** Host {host} on port {port} is down.\n".format(
            host=host, port=port)
        )
    socket.setdefaulttimeout(original_timeout)
    return host_status

def execute_commands(command='ls -l'):
    if is_host_up(env.host, int(env.port)) is True:
        print("Executing on %s as %s. Command: %s" % (env.host, env.user, command))
        run(command)

def shutdown():
    command = "sudo -S shutdown -h now"
    execute_commands(command)

def uname():
    command = "sudo -S uname -a"
    execute_commands(command)
