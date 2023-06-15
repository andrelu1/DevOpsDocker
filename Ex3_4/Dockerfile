FROM containrrr/watchtower

RUN apk update && apk add --no-cache docker-cli

ENV DOCKER_USER=4ndrelu1s
ENV DOCKER_PWD=@bacateMorango123

COPY build.sh /app/build.sh

CMD ["sh", "/app/build.sh"]
