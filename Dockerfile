FROM gfurlan97/base-image:1

COPY . /build
WORKDIR /build

RUN ls -lart
RUN npm install && npm run build && npm install -g serve

CMD [ "serve", "-s", "build" ]
