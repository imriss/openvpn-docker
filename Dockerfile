# Smallest base image
FROM alpine:3.5

MAINTAINER John Felten<john.felten@gmail.com>

ADD VERSION .

# Install needed packages
RUN apk update && apk add openssl easy-rsa openvpn iptables bash && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

# Configure tun
RUN mkdir -p /dev/net && \
     mknod /dev/net/tun c 10 200 

