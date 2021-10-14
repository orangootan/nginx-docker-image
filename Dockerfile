FROM alpine:3.14.2
RUN apk upgrade --no-cache
RUN apk add nginx=1.20.1-r11 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/nginx /var/log/nginx /var/www
ENTRYPOINT ["nginx", "-g", "daemon off;"]
