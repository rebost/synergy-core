#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:16.04

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y git cmake qtbase5-dev build-essential libx11-dev libxtst-dev libgl1-mesa-dev libssl-dev libavahi-compat-libdnssd-dev debhelper devscripts && \
  apt-get -y install qttools5-dev qttools5-dev-tools --no-install-recommends && \
  rm -rf /var/lib/apt/lists/*
  
# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]