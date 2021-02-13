FROM centos:7

LABEL MAINTAINER="Ricardo Santana <rsantana@kenos.com.br>"

RUN yum -y install java-1.6.0-openjdk-devel which \
	&& curl https://netactuate.dl.sourceforge.net/project/ireport/iReport/iReport-3.7.3/iReport-3.7.3.tar.gz --output /iReport-3.7.3.tar.gz \
	&& tar zxvf iReport-3.7.3.tar.gz \
	&& rm -rf /var/cache/yum \
	&& rm -rf /iReport-3.7.3.tar.gz

ENV JAVA_HOME /usr/lib/jvm/java-openjdk

CMD [ "/iReport-3.7.3/bin/ireport" ]