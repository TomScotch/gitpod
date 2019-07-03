FROM ubuntu
FROM gitpod/workspace-full
USER root
RUN sudo apt-get update ; sudo apt-get install openssh-server mongodb -y
RUN sudo mkdir /data ; sudo mkdir /data/db ; sudo chown gitpod /data/db
RUN sudo mkdir /run/sshd ; sudo chown gitpod /run/sshd