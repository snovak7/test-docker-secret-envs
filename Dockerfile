FROM node:16-alpine AS builder

RUN --mount=type=secret,id=secret1 cat /run/secrets/secret1
RUN --mount=type=secret,id=secret1,env=SECRET1 echo ${SECRET1}
RUN --mount=type=secret,id=secret2 cat /run/secrets/secret2
RUN --mount=type=secret,id=secret2,env=SECRET2 echo ${SECRET2}

RUN env