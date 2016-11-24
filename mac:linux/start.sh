source setEnv.sh

echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - startup $PROJECT_NAME project" && $SETCOLOR_FAILURE

pushd $TOMCAT_HOME/bin
	source startup.sh