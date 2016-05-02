FROM easypi/alpine-arm

MAINTAINER Adrien Pujol <ap@cdfr.net>

RUN  apk update \
  && apk add --no-cache rsyslog \
  && rm -rf /var/cache/apk/*

ADD rsyslog.conf /etc/rsyslog.conf

EXPOSE 514 514/udp
VOLUME [ "/var/log", "/etc/rsyslog.d" ]

ENTRYPOINT [ "rsyslogd", "-n" ]
