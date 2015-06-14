#!/bin/bash

/usr/sbin/sshd -D &
su git -l -c "cd /home/git/gogs; ./gogs web"

