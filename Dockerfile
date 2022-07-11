FROM eu.gcr.io/gcfr-352018/node:0-202207111

COPY . /build
WORKDIR /build

RUN ls -lart
RUN npm install && npm run build && npm install -g serve

CMD [ "serve", "-s", "build" ]
