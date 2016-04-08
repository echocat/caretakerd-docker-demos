FROM alpine

MAINTAINER "echocat" contact@echocat.org

RUN apk add --update curl bash procps \
    && rm -rf /var/cache/apk/*

RUN curl -SLk https://caretakerd.echocat.org/latest/download/caretakerd-linux-amd64.tar.gz | tar -xz --exclude caretakerd.html -C /usr/bin

COPY caretakerd.yaml /etc/caretakerd.yaml
COPY myProgram.sh /usr/bin/myProgram.sh
COPY myTool.sh /usr/bin/myTool.sh

ENTRYPOINT ["/usr/bin/caretakerd","run"]
