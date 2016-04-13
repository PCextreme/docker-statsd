FROM node:0.12

ARG STATSD_VERSION=0.7.2

MAINTAINER Wido den Hollander <wido@widodh.nl>

RUN apt-get -y update
RUN apt-get install -y curl

# statsd
RUN mkdir /src \
    && cd /src \
    && curl -SL -o statsd.tar.gz https://github.com/etsy/statsd/archive/v$STATSD_VERSION.tar.gz \
    && mkdir statsd \
    && tar xvf statsd.tar.gz -C statsd --strip-components=1 \
    && rm statsd.tar.gz

RUN mkdir /etc/statsd
ADD config.js /etc/statsd/config.js

EXPOSE 8125/udp 8126

CMD ["/usr/local/bin/node", "/src/statsd/stats.js", "/etc/statsd/config.js"]
