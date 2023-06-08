FROM ubuntu:20.04

WORKDIR /

RUN apt update && apt install -y curl 

RUN apt install curl

COPY curle.sh .

CMD ./curle.sh

