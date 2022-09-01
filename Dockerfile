FROM node:16-alpine as build
# Default version
ARG VERSION="0.3.5"
# RUN apk update && apk upgrade && apk add --no-cache curl python3 make g++
RUN apk update && apk upgrade && apk add --no-cache curl
RUN curl -L https://github.com/capt-nemo429/ergo-graphql/archive/refs/tags/v$VERSION.tar.gz > /tmp/src.tar.gz && \
    tar -xf /tmp/src.tar.gz  -C /tmp && \
    mv /tmp/ergo-graphql-${VERSION} /app
WORKDIR /app
RUN npm install && npm run build

COPY ./explorer-backend.conf ./explorer-backend.conf

CMD ["npm", "run", "start"]
EXPOSE 3000