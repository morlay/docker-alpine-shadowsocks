# ShadowShocksServer
#
# VERSION 0.0.1

FROM frolvlad/alpine-python2
RUN pip install shadowsocks

ENV SS_SERVER 0.0.0.0
ENV SS_SERVER_PORT 10086
ENV SS_PASSWORD password
ENV SS_METHOD aes-256-cfb
ENV SS_TIMEOUT 300

EXPOSE $SS_SERVER_PORT

ENTRYPOINT ssserver -s $SS_SERVER -p $SS_SERVER_PORT -k $SS_PASSWORD -m $SS_METHOD -t $SS_TIMEOUT
