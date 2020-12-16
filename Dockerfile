FROM alpine:3.12

MAINTAINER gtadam@protonmail.ch

ENV HELM_VERSION 3.4.2

RUN apk add --no-cache curl && \
    curl -o /tmp/helm.tar.gz https://get.helm.sh/helm-v$HELM_VERSION-linux-amd64.tar.gz && \
    apk del --purge curl && \
    tar -zxvf /tmp/helm.tar.gz && \
    mv /linux-amd64/helm /usr/bin && \
    rm -rf /linux-amd64

ENTRYPOINT ["helm"]