#!/bin/bash

bin_url="https://dl.gogs.io/gogs_v0.9.13_linux_amd64.tar.gz"
wget $bin_url -O gogs.tar.gz

mv gogs gogs.bak
tar xf gogs.tar.gz
