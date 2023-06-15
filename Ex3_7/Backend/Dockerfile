FROM golang:1.20.5-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN adduser -D -h /home/appuser appuser && \
    chown -R appuser /usr/src/app

USER appuser

RUN go build && \
    go test ./...

ENV REQUEST_ORIGIN=http://localhost:8080

CMD ["./server"]
