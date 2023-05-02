FROM golang:1.16 as build-stage

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 go build -o server

FROM alpine

COPY --from=build-stage /usr/src/app/server /bin/server

EXPOSE 8080

CMD ["/bin/server"]