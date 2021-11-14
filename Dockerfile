FROM busybox:stable
COPY index.html /var/www/index.html
EXPOSE 80
USER www-data
CMD ["httpd", "-f", "-h", "/var/www/" ]
