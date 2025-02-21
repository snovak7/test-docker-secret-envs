FROM node:16-alpine AS builder
RUN --mount=type=secret,id=client_id,env=IDP_DEFAULT_CLIENT_ID \
    --mount=type=secret,id=client_secret,env=IDP_DEFAULT_CLIENT_SECRET \
    --mount=type=secret,id=issuer,env=IDP_DEFAULT_ISSUER
RUN env