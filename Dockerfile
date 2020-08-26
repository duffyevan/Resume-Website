# Dockerfile

FROM php:7-apache
# FROM nimmis/apache-php5
# FROM jelastic/apachephp
# FROM devbeta/apachephp

# RUN rm /var/www/html/*

ADD . /var/www/html

EXPOSE 80

RUN apt-get update && apt-get install -y markdown
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

