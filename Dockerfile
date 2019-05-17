FROM gitpod/workspace-full
USER root
RUN mkdir /data/ ; mkdir /data/db ; chown gitpod /data/db
RUN apt-get update && apt-get install -y \
        mongodb \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
EXPOSE 80
EXPOSE 27017
