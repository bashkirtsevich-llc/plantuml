FROM frolvlad/alpine-oraclejre8

MAINTAINER Bashkirtsev D.A. <bashkirtsevich@gmail.com>
LABEL maintainer="bashkirtsevich@gmail.com"

RUN  apk add --no-cache graphviz wget ca-certificates && \
     wget https://sourceforge.net/projects/plantuml/files/latest/download -O plantuml.jar && \
     apk del wget ca-certificates

ENV LANG en_US.UTF-8

ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "plantuml.jar", "-p"]

CMD ["-tsvg", "-charset utf-8"]
