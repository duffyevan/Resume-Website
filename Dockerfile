# Dockerfile

FROM nimmis/apache-php5
# FROM jelastic/apachephp
# FROM devbeta/apachephp

RUN rm /var/www/html/index.html

ADD . /var/www/html

EXPOSE 80

RUN apt-get update && apt-get install -y markdown
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

