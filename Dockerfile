FROM node:18.4.0-alpine3.16

COPY . /build
WORKDIR /build

RUN ls -lart
RUN npm run build && npm install -g serve

CMD [ "serve", "-s", "build" ]
