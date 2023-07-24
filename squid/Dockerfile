FROM ubuntu:23.10
LABEL authors="kawakawaryuryu"

WORKDIR /app

RUN apt-get update \
    && apt-get install curl dnsutils tcpdump iproute2 squid -y

CMD ["squid","-NYC"]
