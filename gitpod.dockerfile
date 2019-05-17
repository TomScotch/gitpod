FROM ubuntu
FROM gitpod/workspace-full
RUN apt-get update ; apt-get install mongodb -y
RUN mkdir /data/db ; chown gitpod /data/db
EXPOSE 80
EXPOSE 27017
