FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
WORKDIR /var/www/html
COPY index.html /var/www/html
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
