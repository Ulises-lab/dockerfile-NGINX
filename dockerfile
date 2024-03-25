FROM centos:7

MAINTAINER ulises

WORKDIR /home

RUN yum -y update && yum -y install wget && wget https://nginx.org/download/nginx-1.14.0.tar.gz \ 
  && tar -xzvf nginx-1.14.0.tar.gz && yum -y groupinstall "Development Tools" \
  && yum install zlib-devel pcre-devel openssl-devel -y && yum install epel-release -y \ 
  && yum install perl perl-devel perl-ExtUtils-Embed libxslt libxslt-devel libxml2 libxml2-devel gd gd-devel GeoIP GeoIP-devel -y

WORKDIR /home/nginx-1.14.0

RUN ./configure --prefix=/etc/nginx --sbin-path=/usr/sbin/nginx --error-log-path=/var/log/nginx/error.log \ 
  --pid-path=/var/run/nginx.pid --lock-path=/var/run/nginx.lock --user=nginx --group=nginx \
  && make && make install && nginx -v && useradd nginx && chown -R nginx:nginx /etc/nginx/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
