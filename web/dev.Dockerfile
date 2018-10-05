FROM node:10-alpine

RUN apk --no-cache add g++ gcc libgcc libstdc++ linux-headers make python

RUN mkdir /web
WORKDIR /web

COPY package*.json *.js ./

RUN npm i

VOLUME [ "/web/src"]

ENTRYPOINT [ "npm", "run" ]