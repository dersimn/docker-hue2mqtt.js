FROM node:slim

RUN npm install -g hue2mqtt.js

ENTRYPOINT [ "hue2mqtt" ]
