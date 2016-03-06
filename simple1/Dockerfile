FROM alpine:3.3

MAINTAINER "echocat" contact@echocat.org

RUN apk add --update curl bash \
    && rm -rf /var/cache/apk/*

RUN curl -SL https://github.com/echocat/caretakerd/releases/download/v0.1.5/caretakerd-linux-amd64.tar.gz \
    | tar -xz --exclude caretakerd.html -C /usr/bin

COPY caretakerd.yaml /etc/caretakerd.yaml
COPY myProgram.sh /usr/bin/myProgram.sh
COPY myTool.sh /usr/bin/myTool.sh

ENTRYPOINT [ "/usr/bin/caretakerd", "run" ]