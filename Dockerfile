FROM gitpod/workspace-full
USER gitpod
RUN mkdir /data/ ; mkdir /data/db
USER root
RUN apt-get update && apt-get install -y \
        mongodb \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
WORKDIR /Workspace