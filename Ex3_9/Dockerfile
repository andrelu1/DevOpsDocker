FROM golang:1.20.5-alpine3.17 as builder

WORKDIR /usr/src/app

COPY . .

RUN adduser -D -h /home/appuser appuser && \
    chown -R appuser /usr/src/app

USER appuser

RUN go build && \
    go test ./...

FROM alpine:3.17

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app .

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:8080

CMD ["./server"]
