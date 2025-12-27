FROM nginx:latest

# Remove default Nginx website
RUN rm /var/www/html/index.nginx-debian.html

# Copy your index.html to Nginx web directory
COPY index.html /var/www/html/index.html
COPY . .
ENTRYPOINT nginx -D FOREGROUND
