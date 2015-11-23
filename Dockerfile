FROM alpine:latest

MAINTAINER "Mogria <m0gr14@gmail.com>"

RUN adduser -h /var/www -D -H -S -G www-data www-data

COPY umask-wrapper.sh /usr/bin/umask-wrapper.sh
RUN chmod +x /usr/bin/umask-wrapper.sh

RUN apk add --update php-cli

USER www-data
ENTRYPOINT ["umask-wrapper.sh", "php"]
CMD ["--help"]
