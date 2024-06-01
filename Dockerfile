FROM arm64v8/caddy:2.8.1-builder-alpine AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare

FROM arm64v8/caddy:2.8.1-alpine 

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
