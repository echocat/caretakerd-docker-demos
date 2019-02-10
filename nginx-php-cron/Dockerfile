FROM alpine:3.8

MAINTAINER "echocat" contact@echocat.org

RUN apk update \
    && apk add --no-cache --update curl nginx php5-fpm php5-cli musl ca-certificates \
    && curl -sSLf https://caretakerd.echocat.org/latest/download/caretakerd-linux-amd64.tar.gz | tar -xz --exclude caretakerd.html -C /usr/bin \
    && apk del curl readline nginx-initscripts libssh2 \
    && rm -rf /var/cache \
    && rm -rf /home \
    && rm -rf /media \
    && rm -rf /mnt \
    && rm -rf /root \
    && rm -rf /run \
    && rm -rf /tmp

ADD caretakerd.yaml /etc/caretakerd.yaml
ADD nginx.conf      /etc/nginx/nginx.conf
ADD php-fpm.conf    /etc/php5/php-fpm.conf
ADD htdocs          /opt/app/htdocs
ADD scripts         /opt/app/scripts

EXPOSE 8080

CMD [ "/usr/bin/caretakerd", "run" ]
