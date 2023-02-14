FROM ubuntu:latest

RUN apt update \
 && apt upgrade -y \
 && apt install -y \
    sudo \
    vim \
    git \
    openssh-server \
 && adduser dev --disabled-password --gecos "" \
 && wget -O /tmp/install-snoopy.sh https://github.com/a2o/snoopy/raw/install/install/install-snoopy.sh \
 && chmod 755 /tmp/install-snoopy.sh \
 && /tmp/install-snoopy.sh stable

 # Source:
 #   https://github.com/a2o/snoopy#output
 # Generate ssh key rings

WORKDIR /home/dev
