FROM alpine:3.9

MAINTAINER "echocat" contact@echocat.org

RUN apk add --no-cache --update curl ca-certificates \
    && curl -sSLf https://caretakerd.echocat.org/latest/download/caretakerd-linux-amd64.tar.gz | tar -xz --exclude caretakerd.html -C /usr/bin

ADD caretakerd.yaml /etc/caretakerd.yaml

CMD [ "/usr/bin/caretakerd", "run" ]
