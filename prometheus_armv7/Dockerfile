FROM        busybox:latest

RUN

COPY prometheus                             /bin/prometheus
COPY promtool                               /bin/promtool
COPY prometheus.yml                         /etc/prometheus/prometheus.yml
COPY console_libraries/                     /etc/prometheus/
COPY consoles/                              /etc/prometheus/

EXPOSE     9090
VOLUME     [ "/prometheus" ]
WORKDIR    /prometheus
ENTRYPOINT [ "/bin/prometheus" ]
CMD        [ "--web.console.libraries=/etc/prometheus/console_libraries", \
             "--web.console.templates=/etc/prometheus/consoles" ]