FROM armhf/ubuntu:latest

RUN apt update ; apt dist-upgrade -y ; apt full-upgrade -y
RUN apt update ; apt install -y mongodb

EXPOSE 27017
EXPOSE 80
CMD ["mongod","--bind_ip","0.0.0.0","--journal"]
