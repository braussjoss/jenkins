FROM remote-host

COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN dnf upgrade libmodulemd -y && \ 
 yum -y update && \ 
 yum -y install epel-release && \ 
 yum -y install https://repo.ius.io/ius-release-el7.rpm --nobest --skip-broken && \ 
 yum -y search php && \ 
 yum -y install yum-utils && \ 
 yum -y install php php-fpm && \ 
 yum -y install nginx && \ 
 yum -y install php-mysqli && \
 yum clean all



EXPOSE 80 443

RUN mkdir /run/php-fpm && chmod +x /run/php-fpm

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh

#COPY ./docker/supervisord.conf /etc/supervisord.conf

#CMD ["/usr/bin/supervisord", "-n"]

CMD /start.sh

