FROM ubuntu
FROM gitpod/workspace-full
USER root
RUN sudo apt-get update ; sudo apt-get install mongodb -y
RUN mkdir /data/db ; chown gitpod /data/db
EXPOSE 80
EXPOSE 27017
