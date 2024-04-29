FROM caddy:latest-builder AS builder

RUN xcaddy build 

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

ADD Caddyfile /etc/caddy/Caddyfile
