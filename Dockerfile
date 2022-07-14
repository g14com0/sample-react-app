FROM node:18.6.0-alpine3.15

COPY . /build
WORKDIR /build

RUN ls -lart
RUN npm install && npm run build && npm install -g serve

CMD [ "serve", "-s", "build" ]
