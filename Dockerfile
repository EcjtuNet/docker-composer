FROM debian:jessie

RUN apt-get update
RUN apt-get install -y php5-cli php5-json php5-curl ca-certificates
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN php --version && \
    composer --version

VOLUME ["/srv"]
WORKDIR /srv

ENTRYPOINT ["composer"]