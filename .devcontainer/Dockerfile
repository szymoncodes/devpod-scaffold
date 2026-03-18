ARG VARIANT="trixie"
FROM buildpack-deps:${VARIANT}-curl

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get upgrade -y \
    && rm -rf /var/lib/apt/lists/*
