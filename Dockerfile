FROM rust:1.61.0 as builder
 
WORKDIR /app
COPY . .

RUN apt-get update
RUN apt install build-essential -y

CMD ["cargo",  "run",  "--bin",  "server"]
