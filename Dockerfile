FROM gitpod/workspace-full
USER root
RUN apt-get update && apt-get install -y \
        apt install mongodb -y \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
WORKDIR /Workspace
COPY .gitpod.yml /Workspace
COPY Dockerfile /Workspace
