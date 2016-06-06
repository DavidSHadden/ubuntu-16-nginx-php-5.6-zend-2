FROM 1and1internet/ubuntu-16-nginx-1.10.0-php-5.6:latest
MAINTAINER james.wilkins@fasthosts.co.uk
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /var/www/html
COPY files /
RUN \
  apt-get update && \
  apt-get install -y git && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt/lists/* && \
  chmod -R 777 /var/www && \
  chmod -R 755 /hooks /init
  