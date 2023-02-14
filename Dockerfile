FROM ubuntu:latest

RUN apt update \
 && apt upgrade -y \
 && vim \
    git \
    adduser dev --disabled-password --gecos ""

WORKDIR 
