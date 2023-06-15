FROM containrrr/watchtower

RUN apk update && apk add --no-cache docker-cli

ENV DOCKER_USER=user
ENV DOCKER_PWD=passworld

COPY build.sh /app/build.sh

CMD ["sh", "/app/build.sh"]
