FROM alpine

MAINTAINER "echocat" contact@echocat.org

RUN apk add --no-cache --update curl ca-certificates

RUN curl -SLk https://caretakerd.echocat.org/latest/download/caretakerd-linux-amd64.tar.gz | tar -xz --exclude caretakerd.html -C /usr/bin

COPY caretakerd.yaml /etc/caretakerd.yaml

CMD [ "/usr/bin/caretakerd", "run" ]
