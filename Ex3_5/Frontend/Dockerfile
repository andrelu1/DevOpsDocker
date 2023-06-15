FROM ubuntu
WORKDIR /usr/src/app
Expose 5000
RUN apt update
RUN apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install -y nodejs
COPY . . 
RUN npm install
ENV REACT_APP_BACKEND_URL=http://localhost:5000
RUN npm run build
RUN npm install -g serve
CMD ["serve", "-s", "-l" , "5000", "build"]
RUN useradd -m appuser
RUN chown appuser .
USER appuser
