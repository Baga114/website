FROM ubuntu

RUN apt-get update

RUN apt-get install apache2 -y

Run apt-get -y install apache2-utils

RUN rm /var/www/html/index.html

ADD ./index.html /var/www/html

ENTRYPOINT ["apache2ctl"]

CMD ["-DFOREGROUND"]
