#!/bin/sh

VERSION=$1
URL=svn:https://jstd-maven-plugin.googlecode.com/svn/maven2
ARTIFACT=JsTestDriver
FILE=jstestdriver-$VERSION.jar

echo "Deploying $FILE"
mvn -e install:install-file \
  -Durl=$URL \
  -DrepositoryId=jstd-maven-plugin-repo \
  -Dfile=$FILE \
  -DgroupId=com.google.jstestdriver \
  -DartifactId=$ARTIFACT \
  -Dversion=$VERSION \
  -Dpackaging=jar
