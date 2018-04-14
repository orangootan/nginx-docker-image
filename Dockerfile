FROM alpine:3.7
RUN apk upgrade --no-cache
RUN apk add nginx=1.12.2-r6 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache && \
    mkdir /run/nginx
#VOLUME /etc/nginx /var/log/nginx /var/www
ENTRYPOINT ["nginx", "-g", "daemon off;"]
