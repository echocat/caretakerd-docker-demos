FROM alpine

MAINTAINER "echocat" contact@echocat.org
ARG caretakerdDownloadUrl

RUN apk add --update curl bash procps \
    && rm -rf /var/cache/apk/*

RUN curl -SL ${caretakerdDownloadUrl} | tar -xz --exclude caretakerd.html -C /usr/bin

COPY caretakerd.yaml /etc/caretakerd.yaml
COPY myProgram.sh /usr/bin/myProgram.sh
COPY myTool.sh /usr/bin/myTool.sh

ENTRYPOINT [ "/usr/bin/caretakerd", "run" ]