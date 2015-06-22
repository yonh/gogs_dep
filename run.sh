#!/bin/bash

/usr/sbin/sshd -D &
su git -l -c "cd /opt/gogs; ./gogs web"

