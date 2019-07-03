FROM ubuntu
FROM gitpod/workspace-full
USER root
RUN sudo apt-get update ; sudo apt-get install openssh-server -y
RUN sudo mkdir /run/sshd ; sudo chown gitpod /run/sshd
RUN sudo chown gitpod /etc/ssh/
