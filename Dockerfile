FROM node:lts-buster-slim
MAINTAINER David Surey <docker@digitalismus.org>

COPY taiga-events /usr/src/taiga-events
COPY config.json /usr/src/taiga-events/config.json

WORKDIR /usr/src/taiga-events

RUN npm install --production
RUN npm install -g coffeescript

EXPOSE 80

CMD ["coffee", "index.coffee"]
