FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
