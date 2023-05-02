FROM node:16 as build-stage

WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm run build

FROM scratch

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build build

RUN apk add --update npm

RUN npm install -g serve

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]