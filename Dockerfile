FROM <IMAGE-BASE>

# Distribrewed specifics
RUN addgroup -S distribrewed && adduser -S -G distribrewed distribrewed
RUN apk add --no-cache su-exec
