FROM phusion/baseimage:0.9.16


ENV APACHE_RUN_USER www-data \
    APACHE_RUN_GROUP www-data \
    APACHE_LOG_DIR /var/log/apache2 \
    APACHE_LOCK_DIR /var/lock/apache2 \
    APACHE_PID_FILE /var/run/apache2.pid

RUN apt-get update

RUN apt-get install -qy \
    apache2 \
    php5 \
    ssl-cert \
    php5-mysql \
    php5-gd \
    php5-curl \
    php5-intl \
    php-apc \
    php5-xdebug \
    curl \
    wget \
    git \
    mysql-client \
    nano \
    vim

COPY  ./php.ini /etc/php5/apache2/php.ini

RUN mkdir /etc/service/apache
ADD apache.sh /etc/service/apache/run

RUN php5enmod xdebug && \
    a2enmod rewrite &&\
    a2enmod php5 &&\
    a2enmod ssl


EXPOSE 80
EXPOSE 443

# By default, simply start apache.
CMD ["/sbin/my_init"]





