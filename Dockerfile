FROM busybox:ubuntu-14.04

MAINTAINER comesx4 "comesx4@gmail.com"

EXPOSE 80
# RUN apt-get update


ADD ./ngrokd /ngrokd

RUN chmod +x /ngrokd

CMD ./ngrokd -domain="n.irazy.com" -httpAddr=":80"

