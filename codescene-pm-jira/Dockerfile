FROM ubuntu:18.04

RUN apt-get update; apt-get install -y git openjdk-8-jre
RUN apt-get install -y locales 

## because this is Docker, we can just set these without bothering
## with most of the locale infrastructure
ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8
ENV LC_CTYPE C.UTF-8

RUN mkdir -p /opt/codescene-pm-jira
RUN mkdir -p /codescene-pm-jira

ARG CODESCENE_PM_JIRA_VERSION=0.2.6
ADD https://downloads.codescene.io/pm/jira/${CODESCENE_PM_JIRA_VERSION}/codescene-enterprise-pm-jira.standalone.jar /opt/codescene-pm-jira/
EXPOSE 3004

# separate script used because we want to support custom JAVA_OPTIONS variable
ADD start-codescene-pm-jira.sh /start-codescene-pm-jira.sh
RUN chmod 755 /start-codescene-pm-jira.sh

ENV CODESCENE_JIRA_CONFIG=/codescene-pm-jira/codescene-pm-jira.yml
ENV CODESCENE_JIRA_DATABASE_PATH=/codescene-pm-jira/codescene-pm-jira

ENTRYPOINT [ "/start-codescene-pm-jira.sh" ]

