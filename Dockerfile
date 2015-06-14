# Version 0.0.1
# build
# sudo docker build -t yonh/gogs3 .
# run
# sudo docker run -d -p 22:22 -p 3000:3000 --name gogs  yonh/gogs

# basic image
FROM ubuntu:14.04
MAINTAINER yonh "azssjli@163.com"
ENV REFERSHED_AT 2015-06-13

ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y git openssh-server && rm -rf /var/lib/apt/lists/*

run adduser git
add gogs /home/git/gogs
run chown git:git /home/git -R
# modify default ssh port
#run sed -i 's/Port 22/Port 2222/g' /etc/ssh/sshd_config 
#add sshd_config /etc/ssh/sshd_config
RUN mkdir /var/run/sshd

add run.sh /run.sh
run chmod 777 /run.sh

EXPOSE 22 2222 3000

CMD ["/run.sh"]
