FROM golang:1.20.5

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN adduser appuser && \
    chown appuser .

USER appuser

RUN go build && \
    go test ./...

ENV REQUEST_ORIGIN=http://localhost:8080

CMD ["./server"]
