FROM node:18-alpine

ENV APPVERSION=0.1.0

RUN apk add --no-cache make gcc g++ python3

WORKDIR /app
COPY codebase/rdicidr-${APPVERSION}/package.json ./
RUN npm install --production

COPY codebase/rdicidr-${APPVERSION}/ .

EXPOSE 3000
CMD ["npm","start"]
