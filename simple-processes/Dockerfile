FROM alpine:3.9

MAINTAINER "echocat" contact@echocat.org

RUN apk add --no-cache --update curl bash procps \
    && curl -sSLf https://caretakerd.echocat.org/latest/download/caretakerd-linux-amd64.tar.gz | tar -xz --exclude caretakerd.html -C /usr/bin \
    && rm -rf /var/cache/apk/*

ADD caretakerd.yaml /etc/caretakerd.yaml
ADD myProgram.sh    /usr/bin/myProgram.sh
ADD myTool.sh       /usr/bin/myTool.sh

ENTRYPOINT ["/usr/bin/caretakerd","run"]
