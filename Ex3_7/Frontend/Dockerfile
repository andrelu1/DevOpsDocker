FROM node:14-alpine3.17

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

RUN apk update && \
    npm install && \
    npm run build && \
    npm install -g serve

ENV REACT_APP_BACKEND_URL=http://localhost:5000

CMD ["serve", "-s", "-l", "5000", "build"]

RUN adduser -D -h /home/appuser appuser && \
    chown -R appuser /usr/src/app

USER appuser
