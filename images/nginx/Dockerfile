FROM phusion/baseimage
MAINTAINER Klaus <bondvodkamartini@gmail.com>

CMD ["/sbin/my_init"]

RUN apt-get update && apt-get install -y \
	nginx \
	net-tools

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

RUN mkdir -p /etc/service/nginx
ADD start.sh /etc/service/nginx/run
RUN chmod +x /etc/service/nginx/run

EXPOSE 80

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
