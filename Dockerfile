FROM ubuntu
RUN apt update
RUN apt install nginx -y
COPY index.html /var/www/html/index.html
COPY . .
ENTRYPOINT nginx -D FOREGROUND
