@echo off
set BASEDIR=%~dp0
call %BASEDIR%\setEnv.bat

title Compiling
call msg info "[INFO] build %PROJECT_HOME%" & echo.
pushd %PROJECT_HOME%
rem
	call mvn clean install
popd



title Redeploying
call msg info "[INFO] Redeploying" & echo.
call msg info "[INFO] removing the old" & echo.
rmdir /S /Q %TOMCAT_HOME%\webapps\%WAR_NAME% >NUL 2>NUL
del /F /Q %TOMCAT_HOME%\webapps\%WAR_NAME%.war >NUL 2>NUL
del /F /Q %TOMCAT_HOME%\webapps\%WAR_NAME% >NUL 2>NUL
call msg info "[INFO] deploying the new" & echo.
copy /Y %PROJECT_HOME%\target\%WAR_NAME%.war %TOMCAT_HOME%\webapps\%WAR_NAME%.war
call msg info "[INFO] done" & echo.

title Tomcat
call startJrebelDebugTomcat.bat