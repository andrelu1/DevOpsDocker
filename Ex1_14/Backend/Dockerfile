FROM golang:1.20
EXPOSE 8080
WORKDIR /usr/src/app
COPY . .
RUN go build
RUN test ./...
ENV REQUEST_ORIGIN=http://localhost:5000
CMD ["./server"]
