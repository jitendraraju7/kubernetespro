FROM centos:latest
MAINTAINER jitendrgun321@gmail.com
RUN sudo apt-get install httpd -y \
  zip \
 unzip 
ADD httpd://www.free-oss.com/assets/files/free-css-templates/download/pages258/loxury.zip /var/www/html/
WORKDIR unzip loxury.zip
RUN cp -rvf loxury/*
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUNG"]
EXPOSE 80
