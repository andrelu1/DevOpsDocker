FROM alpine AS builder
RUN adduser -D -h /home/appuser appuser
WORKDIR /mydir
RUN apk update && \
    apk add --no-cache neofetch
ENV LC_ALL=C.UTF-8
COPY Dockerfile /mydir/Dockerfile
USER appuser
CMD ["neofetch"]
