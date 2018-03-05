FROM ubuntu:16.04

WORKDIR /usr/local/src
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install wget gcc make
RUN wget https://www.noip.com/client/linux/noip-duc-linux.tar.gz
RUN tar zxvf noip-duc-linux.tar.gz
RUN rm noip-duc-linux.tar.gz
WORKDIR $(echo ls -d noip-*)
