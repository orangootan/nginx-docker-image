FROM alpine:3.13.3
RUN apk upgrade --no-cache
RUN apk add nginx=1.18.0-r15 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/nginx /var/log/nginx /var/www
ENTRYPOINT ["nginx", "-g", "daemon off;"]
