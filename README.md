# Docker statsd

This is a Docker image for running stats. It only runs statsd, nothing else.

The images is based on the NodeJS Docker image and fetches statsd from Github as
a release.

## Running
Example to run the docker instance:

    sudo docker run -e GRAPHITE_HOST=graphite.example.com -P -d pcextreme/docker-statsd

## Building
Examle to build the image:

    sudo docker build -t statsd .

Using the argument STATSD_VERSION you can override which version of statsd to use.

## Environment variables
Environment variables that can be used to set options:

    GRAPHITE_PORT (default: 2003)
    GRAPHITE_HOST (default: localhost)
    STATSD_PORT   (default: 8125)

## Registry
This image is available in the docker registry at pcextreme/statsd:

    sudo docker pull pcextreme/statsd

## Admin interface
The [statsd admin interface](https://github.com/etsy/statsd/blob/master/docs/admin_interface.md) can be accessed through `8126/tcp`.

## IPv6
IPv6 is enabled by default inside the image. Allowing statsd to be used in a IPv6-only environment.
