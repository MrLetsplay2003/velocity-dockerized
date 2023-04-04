FROM alpine:latest

ENV UID=1000
ENV GID=1000

RUN apk add --upgrade sudo shadow openjdk17 curl jq

ADD ./bin /usr/local/bin

RUN groupadd -g $GID velocity
RUN useradd -u $UID -g $GID velocity

RUN mkdir /velocity && chown -R velocity /velocity

VOLUME ["/velocity"]

WORKDIR /velocity

EXPOSE 25577

ENTRYPOINT ["setup"]
CMD ["java", "-Xmx500M", "-Xms500M", "-jar", "velocity.jar"]
