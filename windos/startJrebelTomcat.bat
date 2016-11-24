@echo off
set BASEDIR=%~dp0
call %BASEDIR%\setEnv.bat

set JAVA_OPTS=-agentpath:%JREBEL_HOME%\lib\jrebel64.dll -Drebel.license=%JREBEL_HOME%\jrebel.lic -Drebel.disable_update=true %JAVA_OPTS%
pushd %TOMCAT_HOME%\bin
startup.bat