FROM centos:7
MAINTAINER Joseph Bajin <josephbajin@gmail.com>
RUN yum update -y
RUN yum install -y ftp git-core rpm-build make gcc patch bzip2 \
GeoIP-devel gd-devel libxslt-devel openssl-devel pcre-devel \
perl-devel perl-ExtUtils-Embed zlib-devel expat-devel \
lua-devel pam-devel epel-release
WORKDIR /root
RUN git clone https://github.com/RaginBajin/nginx-package.git
