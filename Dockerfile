FROM node:16-alpine AS builder
RUN --mount=type=secret,id=client_id \
    --mount=type=secret,id=client_secret \
    --mount=type=secret,id=issuer
RUN cat /run/secrets/client_id
RUN cat /run/secrets/client_secret
RUN cat /run/secrets/issuer
