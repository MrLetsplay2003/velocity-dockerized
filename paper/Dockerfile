FROM alpine:latest

ARG JAVA=openjdk17
RUN apk add --upgrade $JAVA curl jq

ADD ./bin /usr/local/bin

RUN adduser -D minecraft

RUN mkdir /minecraft && chown -R minecraft /minecraft

VOLUME ["/minecraft"]

WORKDIR /minecraft

USER minecraft

EXPOSE 25565

ARG MC_VERSION
ENV MC_VERSION=${MC_VERSION:-1.19.4}

CMD sh -c "download_mc $MC_VERSION && java -Xmx2G -Xms2G -jar paper.jar"
