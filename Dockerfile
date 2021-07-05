FROM alpine:3.14.0
RUN apk upgrade --no-cache
RUN apk add nginx=1.20.1-r5 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/nginx /var/log/nginx /var/www
ENTRYPOINT ["nginx", "-g", "daemon off;"]
