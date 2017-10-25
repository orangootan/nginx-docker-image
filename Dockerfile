FROM alpine:3.6
RUN apk add nginx=1.12.2-r2 \
    --repository https://dl-cdn.alpinelinux.org/alpine/edge/main \
    --no-cache && \
    mkdir /run/nginx
#VOLUME /etc/nginx /var/log/nginx /var/www
ENTRYPOINT ["nginx", "-g", "daemon off;"]
