FROM rust:alpine3.22 AS build
ARG VERSION

RUN apk add --no-cache musl-dev
RUN cargo install --version "$VERSION" xdvdfs-cli

FROM alpine:3.22
LABEL org.opencontainers.image.source=https://github.com/majfault/docker-cli-xdvdfs.git
LABEL org.opencontainers.image.description=https://github.com/antangelo/xdvdfs.git
LABEL org.opencontainers.image.licenses=MIT

COPY --from=build /usr/local/cargo/bin/xdvdfs /usr/local/bin/xdvdfs

WORKDIR /work

ENTRYPOINT [ "xdvdfs" ]
