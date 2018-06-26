FROM alpine:3.7

LABEL maintainer="Ming-Jui Chen <cutedogspark@gmail.com>"

WORKDIR /tmp

RUN buildDeps="wget
                tar
                ca-certificates" \
    && runDeps="bash libgcc openssl pcre perl tzdata curl" \
    && apk upgrade \
    && export MAKEFLAGS="-j$(($(grep -c ^processor /proc/cpuinfo) + 1))" \
    && apk add --no-cache --virtual .build-deps ${buildDeps} \
    && apk add --no-cache ${runDep}\
    && apk del .build-deps

ENV     NGINX_VERSION=1.13.3 \
        NGINX_RTMP_MODULE_VERSION=1.2.0-qeek


COPY nginx.conf /etc/nginx/