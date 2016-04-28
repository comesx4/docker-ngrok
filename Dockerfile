FROM ubuntu:trusty

MAINTAINER comesx4 "comesx4@gmail.com"

EXPOSE 80
EXPOSE 81
EXPOSE 4443
RUN apt-get update
RUN apt-get install -y nginx



ADD ./ngrokd /ngrokd

RUN chmod +x /ngrokd

CMD ./ngrokd -domain="n.irazy.com" -httpAddr=":81"

