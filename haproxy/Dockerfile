FROM ubuntu:23.10
LABEL authors="kawakawaryuryu"

WORKDIR /var/lib/haproxy

RUN apt-get update \
    && apt-get install curl dnsutils haproxy -y

CMD ["haproxy","-f","/etc/haproxy/haproxy.cfg"]
