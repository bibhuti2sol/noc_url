FROM alpine:3.12
LABEL maintainer="bibhuti2sol@gmail.com"

#install Node and NPM
RUN apk add --update nodejs nodejs-npm

RUN npm install -g http-server


#Copy app to /src
COPY . /src

WORKDIR /src

EXPOSE 8080

ENTRYPOINT ["http-server", "-p", "8080"]
