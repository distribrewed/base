FROM <IMAGE-BASE>

# Distribrewed specifics
RUN set -xe && \
    addgroup -S distribrewed && \
    adduser -S -G distribrewed distribrewed && \
    apk add --no-cache su-exec
