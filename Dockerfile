FROM ubuntu:latest
LABEL maintainer="andrea@picciau.net"

RUN apt-get update -y -q \
  && apt-get upgrade -y -q \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y -q \
    texlive-full \
    python3 \
    git \
  && ln -s /usr/bin/python3 /usr/bin/python