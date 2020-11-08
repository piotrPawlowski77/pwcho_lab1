FROM centos:latest
LABEL maintainer="Piotr P <piotr123@o2.pl>"
RUN yum -y install httpd
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
