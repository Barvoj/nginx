FROM nginx
MAINTAINER Vojtech Bartos <docker@vojtechbartos.com>

RUN mkdir -p /var/www/project

RUN chown -R www-data:www-data /var/www/project
RUN chmod -R 777 /var/www/project

COPY ./project.conf /etc/nginx/conf.d/project.conf
