FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:transmissionbt/ppa && \
    apt-get update && \
    apt-get -y install transmission-cli transmission-common transmission-daemon

ENTRYPOINT ["/usr/bin/transmission-daemon", "-f", "--log-debug", "-g", "/var/lib/transmission-daemon/config"]

# docker create --name transmission \
#               -p 9091:9091 \
#               -p 51413:51413 \
#               -v /mnt/transmission:/var/lib/transmission-daemon \
#               gitareest/transmission