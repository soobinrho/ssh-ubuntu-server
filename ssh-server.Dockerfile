FROM ubuntu:latest

# Install basic programs
RUN apt update \
 && apt upgrade -y \
 && apt install -y \
    sudo \
    vim \
    git \
    openssh-server

# Set time zone to Chicago
RUN apt install -yq tzdata \
 && ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime \
 && dpkg-reconfigure -f noninteractive tzdata

# Enable commands logging
RUN wget -O /tmp/install-snoopy.sh https://github.com/a2o/snoopy/raw/install/install/install-snoopy.sh \
 && chmod +x /tmp/install-snoopy.sh \
 && /tmp/install-snoopy.sh \
 && rm /tmp/install-snoopy.sh

# Add a non-root user named `dev` and create SSH key pair
RUN adduser dev --disabled-password --gecos "" \
 && su - dev \
 && ssh-keygen -t rsa -b 4096 -f /home/dev/.ssh/id_rsa -N ""

WORKDIR /home/dev
