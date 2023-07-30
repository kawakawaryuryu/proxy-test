FROM ubuntu:23.10 as builder
LABEL authors="kawakawaryuryu"
ARG NGINX_VERSION=1.25.1

WORKDIR /build

RUN apt-get update \
    && apt-get install -y wget build-essential libpcre3 libpcre3-dev zlib1g-dev libssl-dev \
    && wget https://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz \
    && tar -xvf nginx-${NGINX_VERSION}.tar.gz \
    && cd nginx-${NGINX_VERSION} \
    && ./configure --with-stream \
    && make \
    && make install

FROM ubuntu:23.10
LABEL authors="kawakawaryuryu"

COPY --from=builder /usr/local/nginx /usr/local/nginx
RUN ln -s /usr/local/nginx/sbin/nginx /usr/sbin/nginx \
    && ln -s /usr/local/nginx/conf /etc/nginx \
    && ln -s /usr/local/nginx/logs /var/log/nginx \
    && ln -s /dev/stdout /var/log/nginx/access.log \
    && ln -s /dev/stderr /var/log/nginx/error.log
RUN groupadd -r nginx \
    && useradd -r -g nginx nginx \
    && apt-get update \
    && apt-get install libpcre3 curl dnsutils tcpdump iproute2 -y

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
