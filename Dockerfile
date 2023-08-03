FROM ubuntu
MAINTAINER nachiketasharma89@gmail.com
RUN sudo apt install -y apache2
RUN sudo apt install  -y zip
RUN sudo apt install  -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
