FROM centos:7.2.1511
MAINTAINER nan.com


RUN yum install -y wget bzip2 vim \
 &&  wget https://ftp.postgresql.org/pub/source/v9.5.3/postgresql-9.5.3.tar.bz2 \
 && tar -xvf postgresql-9.5.3.tar.bz2

RUN yum install -y git bison libtool automake patch\
 zlib-devel libxml2-devel openssl-devel libyaml-devel libffi-devel readline-devel gdbm-devel ncurses-devel libcurl-devel pcre-devel\
 sqlite-devel libxslt libxslt-devel \
&& yum clean all

RUN yum install -y make gcc gcc-c++ \
 && cd postgresql-9.5.3\
 && ./configure --prefix=/opt/postgresql-9.5.3 \
 && make \
 && make install \
 && ln -s /opt/postgresql-9.5.3 /opt/postgres \
 && rm -f /postgresql-9.5.3.tar.bz2

 ENV RUBY_VERSION 2.3.1
 RUN wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz \
  && tar -xf ruby-2.3.1.tar.gz \
  && cd ruby-2.3.1 \
  && ./configure --disable-install-doc --disable-install-rdoc --enable-shared \
  && make \
  && make install \
  && cd / \
  && rm -rf ruby-2.3.1.tar.gz \

 RUN gem install bundler \
  && gem install rails \
