@echo off
set BASEDIR=%~dp0
call %BASEDIR%\setEnv.bat

pushd %TOMCAT_HOME%\bin
startup.bat