FROM docker

RUN apk update

RUN apk add git

WORKDIR /usr/src/app

COPY . .

RUN chmod +x builder.sh

ENTRYPOINT ["./builder.sh"]