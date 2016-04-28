FROM busybox:ubuntu-14.04

MANTAINER comesx4 "comesx4@gmail.com"

RUN apt-get update

ADD ./ngrokd /ngrokd

RUN chmod +x /ngrokd

./ngrokd -domain="n.irazy.com" -httpAddr=":80"

