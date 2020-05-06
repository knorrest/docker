FROM alpine:latest
RUN apk --update add openjdk8-jre nss git ttf-dejavu

WORKDIR /opt/codescene
COPY target/codescene-enterprise-edition.standalone.jar .
CMD java -jar codescene-enterprise-edition.standalone.jar
