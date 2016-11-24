@echo off
rem set ----------- TOMCAT_HOME homes  
set "TOMCAT_HOME=E:\tomcat"
rem set ----------- test homes
set "PROJECT_NAME=test"
set "PROJECT_HOME=E:\prj\test"
set "WAR_NAME=test"

rem set ----------- maven env
set "MAVEN_OPTS=-Xmx1024m -XX:MaxPermSize=256m"
set "MVN_ARGS="
set "MVN=mvn %MVN_ARGS% -Dmaven.test.skip=true -Dmaven.test.skip.exec=true "
set "JREBEL_HOME=E:\jrebel"
:End
