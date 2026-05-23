FROM alpine:3.23.4

ARG TEX_FMT_VERSION=v0.5.7

RUN apk add --no-cache curl tar bash

RUN \
  curl -fsSL -o \
    /tmp/tex-fmt.tar.gz \
    https://github.com/WGUNDERWOOD/tex-fmt/releases/download/${TEX_FMT_VERSION}/tex-fmt-x86_64-alpine.tar.gz && \
  tar -xzf /tmp/tex-fmt.tar.gz -C /usr/local/bin && \
  chmod +x /usr/local/bin/tex-fmt && \
  rm -rf /tmp/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
