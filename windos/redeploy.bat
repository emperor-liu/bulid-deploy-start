@echo off
set BASEDIR=%~dp0
call %BASEDIR%\setEnv.bat

echo removing the old
rmdir /S /Q %TOMCAT_HOME%\webapps\%WAR_NAME% >NUL 2>NUL
del /F /Q %TOMCAT_HOME%\webapps\%WAR_NAME%.war >NUL
echo deploying the new
copy /Y %PROJECT_HOME%\target\%WAR_NAME%.war %TOMCAT_HOME%\webapps\%WAR_NAME%.war
echo done
timeout /t 1 >NUL 