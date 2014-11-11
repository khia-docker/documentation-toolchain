#!/bin/bash
# Copied from https://github.com/dockerfile/java/blob/master/oracle-java8/Dockerfile
set -e

echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
add-apt-repository -y ppa:webupd8team/java
apt-get update
apt-get install -y oracle-java8-installer
rm -rf /var/lib/apt/lists/*
rm -rf /var/cache/oracle-jdk8-installer
