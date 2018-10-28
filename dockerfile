FROM ubuntu:16.04
MAILTAINER menikolenko <menikolenko@gmail.com>
WORKDIR /app
COPY ./web-app /app
ENTRYPOINT ["/app/web-app.sh"]
