FROM ubuntu:16.04

# Install samba
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y samba winbind libnss-winbind libpam-winbind
# Install Webmin
RUN apt-get -y install wget apt-utils
RUN sh -c 'echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list'
RUN wget -qO - http://www.webmin.com/jcameron-key.asc | apt-key add -
# Workaround for https://groups.google.com/forum/#!topic/beagleboard/jXb9KhoMOsk
RUN apt-get -y remove --purge apt-show-versions
RUN rm /var/lib/apt/lists/*gz && echo done || echo done
RUN rm /var/lib/apt/lists/*lz4 && echo done || echo done
RUN apt-get -o Acquire::GzipIndexes=false update
RUN apt-get -y install apt-show-versions
RUN apt-get update
RUN apt-get -y install webmin

COPY entrypoint.sh /usr/sbin/

ENTRYPOINT ["entrypoint.sh"]

# docker create --name samba \
#               -p 10000:10000 \
#               -p 445:445 \
#               -p 139:139 \
#               gitareest/samba