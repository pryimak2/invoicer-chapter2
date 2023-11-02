FROM golang:latest

RUN mkdir /app/
RUN mkdir /app/statics/
ADD statics /app/statics/
RUN chmod -r /app/ 777

COPY bin/invoicer /app/invoicer

EXPOSE 8080
WORKDIR /app
ENTRYPOINT /app/invoicer
