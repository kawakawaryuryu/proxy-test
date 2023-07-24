FROM ubuntu:23.10
LABEL authors="kawakawaryuryu"

WORKDIR /app

RUN apt-get update \
    && apt-get install curl dnsutils tcpdump iproute2 haproxy -y

CMD ["haproxy","-f","/etc/haproxy/haproxy.cfg"]
