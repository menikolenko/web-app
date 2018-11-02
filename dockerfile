FROM ubuntu
MAINTAINER menikolenko <menikolenko@gmail.com>
RUN apt-get update && apt-get install -y netcat curl
WORKDIR /app
COPY ./web-app.sh /app
ENTRYPOINT ["/app/web-app.sh"]
