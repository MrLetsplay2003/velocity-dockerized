FROM alpine:latest

RUN apk add --upgrade openjdk17 curl jq

ADD ./bin /usr/local/bin

RUN adduser -D velocity

RUN mkdir /velocity && chown -R velocity /velocity

VOLUME ["/velocity"]

WORKDIR /velocity

USER velocity

EXPOSE 25577

CMD sh -c "download_velocity && java -Xmx500M -Xms500M -jar velocity.jar"
