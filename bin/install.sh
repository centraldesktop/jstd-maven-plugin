#!/bin/sh

VERSION=$1
URL=svn:https://jstd-maven-plugin.googlecode.com/svn/maven2
ARTIFACT=jstestdriver
FILE=jstestdriver-$VERSION.jar
REPO=$2

echo "Deploying $FILE"
mvn -e deploy:deploy-file \
  -Durl=$REPO \
  -DrepositoryId=jstd-maven-plugin-repo \
  -Dfile=$FILE \
  -DgroupId=com.google.jstestdriver \
  -DartifactId=$ARTIFACT \
  -Dversion=$VERSION \
  -Dpackaging=jar 
