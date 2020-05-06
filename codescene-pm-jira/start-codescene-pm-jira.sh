#!/bin/bash
java -XshowSettings:vm $JAVA_OPTIONS -jar "/opt/codescene-pm-jira/codescene-enterprise-pm-jira.standalone.jar" | tee -a /codescene-pm-jira/codescene.log
