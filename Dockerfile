FROM openjdk:8-jre-alpine3.8

MAINTAINER ypzhuang <zhuangyinping@gmail.com>

RUN  apk --no-cache add openssl && \
     apk add --update tzdata && \
     rm -rf /var/cache/apk/*    
RUN  apk --no-cache add ttf-dejavu && \
     rm -rf /var/cache/apk/* 
      
ENV TZ=Asia/Shanghai


