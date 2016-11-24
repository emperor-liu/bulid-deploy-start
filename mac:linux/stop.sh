source setEnv.sh

echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - shutdown $PROJECT_NAME project" && $SETCOLOR_NORMAL

pushd $TOMCAT_HOME/bin
	source shutdown.sh