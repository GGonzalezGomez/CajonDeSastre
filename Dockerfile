# build stage
FROM maven:3.5-jdk-8-alpine as build-env
WORKDIR /tmp

RUN apk upgrade --update-cache --available && \
    apk add openssl && \
    rm -rf /var/cache/apk/*

RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 && chmod 700 get_helm.sh && ./get_helm.sh

ENTRYPOINT ["/bin/bash"]
