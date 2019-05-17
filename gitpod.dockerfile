FROM ubuntu
FROM gitpod/workspace-full
USER root
RUN sudo apt-get update ; sudo apt-get install mongodb -y
RUN sudo mkdir /data ; sudo mkdir /data/db ; sudo chown gitpod /data/db