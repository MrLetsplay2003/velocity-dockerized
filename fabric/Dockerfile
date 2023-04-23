FROM alpine:latest

ENV UID=1000
ENV GID=1000

ARG JAVA=openjdk17
RUN apk add --upgrade sudo shadow $JAVA curl jq

ADD ./bin /usr/local/bin

RUN useradd minecraft

RUN mkdir /minecraft && chown -R minecraft /minecraft

VOLUME ["/minecraft"]

WORKDIR /minecraft

EXPOSE 25565

ARG MC_VERSION
ENV MC_VERSION=${MC_VERSION:-1.19.4}

ENTRYPOINT ["setup"]
CMD ["java", "-Xmx2G", "-Xms2G", "-jar", "fabric.jar"]
