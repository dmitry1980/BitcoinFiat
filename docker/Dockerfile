FROM debian:stretch
LABEL maintainer="Bitcoinfiat Developers <dev@bitcoinfiat.org>"
LABEL description="Dockerised BitcoinfiatCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
