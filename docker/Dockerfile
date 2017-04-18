FROM jenkins:2.46.1-alpine

USER root
RUN apk update
RUN apk add shadow && apk add docker

USER jenkins

ENTRYPOINT chgrp jenkins /var/run/docker.sock
