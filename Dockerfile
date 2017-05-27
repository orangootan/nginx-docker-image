FROM alpine:3.6
RUN apk update && apk upgrade
ARG REPO=http://dl-cdn.alpinelinux.org/alpine/edge/main
ARG VERSION=1.12.0-r2
RUN apk add nginx=$VERSION --update-cache --repository $REPO
RUN mkdir /run/nginx
EXPOSE 80 443
VOLUME /etc/nginx /var/log/nginx /var/www
ENTRYPOINT ["nginx", "-g", "daemon off;"]
