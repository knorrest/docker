FROM tomcat:9-jre8

RUN apt-get -y update 
RUN apt-get -y install git fontconfig

USER root

ENV CATALINA_HOME /usr/local/tomcat

COPY tomcat-users.xml ${CATALINA_HOME}/conf/
COPY context.xml ${CATALINA_HOME}/conf/

ARG CODESCENE_VERSION=3.6.0
ADD https://downloads.codescene.io/enterprise/${CODESCENE_VERSION}/codescene-enterprise-edition.war ${CATALINA_HOME}/webapps
#ADD codescene-enterprise-edition.war ${CATALINA_HOME}/webapps

EXPOSE 8080
CMD ["catalina.sh", "run"]
