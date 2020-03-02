FROM ubuntu:latest
MAINTAINER samrjeet_kumar pal <automation.jeet996622@gmail.com>
RUN echo "__running_ubuntu:__" && apt-get update && apt-get install -y nginx
ADD index.html /var/www/html/index.html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
