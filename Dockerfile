FROM golang:1.23.4

WORKDIR /usr/local/app

COPY . .

RUN go mod download

RUN go test .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /42-DOCKER-FINAL-MAIN

CMD ["/42-DOCKER-FINAL-MAIN"]