FROM alpine:3.10.3
RUN apk add --update wireguard-tools \
	&& apk add --update python3 \
	&& pip3 install https://github.com/shadowsocks/shadowsocks/archive/master.zip \
	&& rm -rf /var/cache/apk/*
	
COPY scripts /scripts
CMD ["/scripts/start.sh"]
