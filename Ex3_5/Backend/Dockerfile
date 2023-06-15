FROM golang:1.20.5
EXPOSE 8080
WORKDIR /usr/src/app
COPY . .
RUN adduser  appuser

RUN chown appuser .

USER appuser

RUN go build
RUN test ./...
ENV REQUEST_ORIGIN=http://localhost:8080
CMD ["./server"]
