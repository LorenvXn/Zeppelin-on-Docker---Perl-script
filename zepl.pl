#/usr/bin/perl -w

use strict; 

my $filename = 'Dockerfile';
open(my $fh, '>', 'Dockerfile');

print $fh "FROM ubuntu:14.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh 
RUN  apt-get update \\
  && apt-get install -y wget";

print $fh "RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update

RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install oracle-java7-installer -y";

print $fh "
WORKDIR /root
RUN wget http://apache.mirrors.pair.com/zeppelin/zeppelin-0.6.1/zeppelin-0.6.1-bin-all.tgz \\
   && tar zxvf zeppelin-0.6.1-bin-all.tgz -C /opt
RUN  chown -R root:root /opt/zeppelin-0.6.1-bin-all/
RUN  ln -fs /opt/zeppelin-0.6.1-bin-all /opt/zeppelin";

print $fh "
RUN sed -i '$ a\PATH=\$PATH:/opt/zeppelin/bin' .bashrc
RUN sed -i '$ a\export PATH' .bashrc

RUN source  ~/.bashrc";

print $fh "
WORKDIR /opt/zeppelin/conf
RUN cp zeppelin-site.xml.template zeppelin-site.xml

WORKDIR /opt/zeppelin/bin

EXPOSE 8080";

close $fh;
