FROM golang:latest

RUN mkdir /app/
RUN mkdir /app/statics/
ADD statics /app/statics/


COPY bin/invoicer /app/invoicer
RUN chmod -R 777 /app/ 
EXPOSE 8080
WORKDIR /app
ENTRYPOINT /app/invoicer
