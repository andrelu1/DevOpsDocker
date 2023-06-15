FROM ubuntu

WORKDIR /usr/src/app

EXPOSE 5000

RUN apt update && \
    apt install -y curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash && \
    apt-get install -y nodejs

COPY . .

RUN npm install && \
    npm run build && \
    npm install -g serve

ENV REACT_APP_BACKEND_URL=http://localhost:5000

CMD ["serve", "-s", "-l", "5000", "build"]

RUN useradd -m appuser && \
    chown appuser .

USER appuser
