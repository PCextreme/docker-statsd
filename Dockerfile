FROM node:0.12

ARG STATSD_VERSION=0.7.2

MAINTAINER Wido den Hollander <wido@widodh.nl>

RUN apt-get -y update
RUN apt-get install -y curl

RUN mkdir /src \
    && cd /src \
    && git clone https://github.com/etsy/statsd.git statsd

RUN mkdir /etc/statsd
ADD config.js /etc/statsd/config.js

EXPOSE 8125/udp 8126

CMD ["node", "/src/statsd/stats.js", "/etc/statsd/config.js"]
