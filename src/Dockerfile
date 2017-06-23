FROM jenkins:_version_-alpine

USER root
RUN apk update
RUN apk add shadow && apk add docker
RUN usermod jenkins -aG ping

USER jenkins
