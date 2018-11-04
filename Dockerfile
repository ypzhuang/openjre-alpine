FROM openjdk:8-jre-alpine3.8

MAINTAINER ypzhuang <zhuangyinping@gmail.com>
ENV DOCKERIZE_VERSION=v0.6.1
RUN  apk --no-cache add openssl && \
     apk add --update tzdata && \
     rm -rf /var/cache/apk/*      
ENV TZ=Asia/Shanghai
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz
