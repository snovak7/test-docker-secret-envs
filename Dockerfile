FROM node:16-alpine AS builder

RUN --mount=type=secret,id=client_id export CLIENT_ID=$(cat /run/secrets/client_id)
RUN --mount=type=secret,id=client_secret export CLIENT_SECRET=$(cat /run/secrets/client_secret)
RUN --mount=type=secret,id=issuer export ISSUER=$(cat /run/secrets/issuer)

RUN env