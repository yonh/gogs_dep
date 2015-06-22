#!/bin/bash

/usr/sbin/sshd -D &
chown git:git /home/git -R
su git -l -c "cd /opt/gogs; ./gogs web"

