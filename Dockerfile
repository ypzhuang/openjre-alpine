FROM openjdk:8u121-jre-alpine

MAINTAINER ypzhuang <sunbei914914@msn.com>

RUN apk update  && \
    apk --no-cache add openssl 

