FROM nginx
MAINTAINER Vojtech Bartos <docker@vojtechbartos.com>

RUN mkdir -p /project

RUN chown -R www-data:www-data /project
RUN chmod -R 777 /project

COPY ./project.conf /etc/nginx/conf.d/project.conf
