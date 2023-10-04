FROM ubuntu
MAINTAINER "Atmaprakashks@gmail.com"
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk
ENV JAVA_HOME /usr
ADD apache-tomcat-9.0.80.tar.gz /home/atmaprakash
COPY target/gamutgurus.war /home/atmaprakash/apache-tomcat-9.0.80/webapps
ENTRYPOINT /root/apache-tomcat-9.0.80/bin/startup.sh && bash

