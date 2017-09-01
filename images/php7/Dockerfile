FROM php:7.1-fpm

#RUN apt-get update && apt-get install -y net-tools 
#RUN docker-php-ext-install tidy ctype mcrypt mbstring xml pdo pdo_mysql mysqli 

#RUN apt-get update && apt-get install -y mcrypt 
RUN docker-php-ext-install mysqli pdo pdo_mysql

EXPOSE 9000

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["php-fpm"]



