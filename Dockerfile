FROM centos:latest
MAINTAINER nachiketasharma89@gmail.com
RUN yum install -y httpd
RUN yum install  -y zip
RUN yum install  -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/etc/apache2","-D","FOREGROUND"]
EXPOSE 80
