ARG MC_VERSION

FROM mrletsplay/paper:${MC_VERSION}

ENV MC_VERSION=${MC_VERSION}

ENV UID=1000
ENV GID=1000

RUN apk add git

ADD ./bin /usr/local/bin

ADD ./patches /build/patches

VOLUME ["/minecraft"]

WORKDIR /minecraft

EXPOSE 25565

ENTRYPOINT ["build_paper"]
CMD ["java", "-Xmx2G", "-Xms2G", "-jar", "paper.jar"]
