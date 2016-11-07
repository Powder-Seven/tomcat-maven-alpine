FROM tomcat:7-jre8-alpine
MAINTAINER Daeyoun Kang <mail.ikasty@gmail.com>

# predefine values
ENV MAVEN_VERSION 3.3.9

# install maven
RUN wget http://mirror.navercorp.com/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
	tar xzf apache-maven-$MAVEN_VERSION-bin.tar.gz && \
	rm apache-maven-$MAVEN_VERSION-bin.tar.gz && \
	mv apache-maven-$MAVEN_VERSION /usr/lib/mvn

# copy script
COPY ./start.sh /usr/local/tomcat/bin/start.sh

# set environment values
ENV M2_HOME /usr/lib/mvn
ENV M2 $M2_HOME/bin
ENV PATH $PATH:$M2_HOME:$M2

CMD start.sh