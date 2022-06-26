FROM node:18.4.0-alpine3.16 as build

COPY . /build
WORKDIR /build

RUN npm run build && \
    npm install -g serve

CMD [ "serve", "-s", "build" ]
