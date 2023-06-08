FROM ubuntu
WORKDIR /
RUN apt update && apt install -y curl 
COPY curle.sh .
CMD chmod +x curle.sh
CMD ./curle.sh

