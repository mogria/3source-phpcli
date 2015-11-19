FROM debian:jessie

MAINTAINER "Mogria <m0gr14@gmail.com>"

COPY umask-wrapper.sh /usr/bin/umask-wrapper.sh
RUN chmod +x /usr/bin/umask-wrapper.sh

# Install PHP-CLI using APT
RUN apt-get update -y && \
    apt-get install php5-cli -y

# Container entry point is PHP, default command is --help
ENTRYPOINT ["umask-wrapper.sh", "php"]
CMD ["--help"]
