FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY src .

RUN apk update && apk upgrade && \
    apk --update add logrotate openssl bash && \
    apk add --no-cache certbot certbot-nginx