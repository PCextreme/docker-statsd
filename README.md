# Docker statsd

This is a Docker image for running stats. It only runs statsd, nothing else.

The images is baed on the NodeJS Docker image and fetches statsd from Github as
a release.

Example to run the docker instance:

    sudo docker run -e GRAPHITE_HOST=graphite.example.com -P -d widodh/docker-statsd

Examle to build the image:

    sudo docker build -t statsd .

 Using the argument STATSD_VERSION you can override which version of statsd to use.

Environment variables that can be used to set options:

    GRAPHITE_PORT (default: 2003)
    GRAPHITE_HOST (default: localhost)
    STATSD_PORT   (default: 8125)

This image is available in the docker registry at widodh/statsd:

    sudo docker pull widodh/statsd

The [statsd admin interface](https://github.com/etsy/statsd/blob/master/docs/admin_interface.md) can be accessed through `8126/tcp`.
