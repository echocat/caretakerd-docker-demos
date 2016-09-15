FROM alpine

MAINTAINER "echocat" contact@echocat.org

RUN apk add --no-cache --update curl nginx php5-fpm musl ca-certificates

RUN curl -SLk https://caretakerd.echocat.org/latest/download/caretakerd-linux-amd64.tar.gz | tar -xz --exclude caretakerd.html -C /usr/bin

RUN apk del curl readline nginx-initscripts libssh2 \
    && rm -rf /var/cache \
    && rm -rf /home \
    && rm -rf /media \
    && rm -rf /mnt \
    && rm -rf /root \
    && rm -rf /run \
    && rm -rf /tmp

COPY caretakerd.yaml /etc/caretakerd.yaml
COPY nginx.conf /etc/nginx/nginx.conf
COPY php-fpm.conf /etc/php5/php-fpm.conf
COPY htdocs /opt/app/htdocs

EXPOSE 8080

CMD [ "/usr/bin/caretakerd", "run" ]
