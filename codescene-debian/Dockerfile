FROM debian:stable-slim

RUN apt-get -y update 
RUN apt-get -y install git
RUN apt-get -y install openjdk-8-jdk-headless

WORKDIR /opt/codescene
COPY target/codescene-enterprise-edition.standalone.jar .
CMD java -jar codescene-enterprise-edition.standalone.jar
