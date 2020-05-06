FROM centos

RUN yum -y upgrade
RUN yum -y install git
RUN yum -y install java-1.8.0-openjdk
RUN yum -y remove fontconfig

WORKDIR /opt/codescene
COPY target/codescene-enterprise-edition.standalone.jar .
CMD java -jar codescene-enterprise-edition.standalone.jar
