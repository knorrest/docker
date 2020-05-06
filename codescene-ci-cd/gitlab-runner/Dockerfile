FROM gitlab/gitlab-runner

RUN apt-get update && apt-get install -y cmake g++

RUN apt-get install -y openjdk-8-jre

COPY codescene-gitlab-0.1.0-SNAPSHOT-standalone.jar /