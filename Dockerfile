FROM alpine

ENV VERSION "17.03.1-ce"

RUN wget -q -P /tmp https://download.docker.com/linux/static/stable/x86_64/docker-$VERSION.tgz \
    && tar -xz -C /tmp -f /tmp/docker-$VERSION.tgz \
    && mv /tmp/docker/docker /usr/bin \
    && rm -rf /tmp/docker /tmp/docker-$VERSION.tgz
