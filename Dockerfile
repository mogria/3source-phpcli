FROM alpine:latest

MAINTAINER "Mogria <m0gr14@gmail.com>"

COPY umask-wrapper.sh /usr/bin/umask-wrapper.sh
RUN chmod +x /usr/bin/umask-wrapper.sh

RUN apk add --update php-cli

ENTRYPOINT ["umask-wrapper.sh", "php"]
CMD ["--help"]
