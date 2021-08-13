FROM alpine:3.12

LABEL \
    org.opencontainers.image.title="bird" \
    org.opencontainers.image.authors="akafeng <i@sjy.im>" \
    org.opencontainers.image.source="https://github.com/akafeng/docker-bird"

RUN set -eux \
    && echo "@edgecommunity http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && apk add --no-cache \
        tzdata \
        bird@edgecommunity

EXPOSE 179/tcp

CMD ["bird", "-f"]
