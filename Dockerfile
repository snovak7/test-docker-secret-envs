FROM node:16-alpine AS builder

RUN --mount=type=secret,id=client_id cat /run/secrets/client_id
RUN --mount=type=secret,id=client_secret cat /run/secrets/client_secret
RUN --mount=type=secret,id=issuer cat /run/secrets/issuer

RUN env