source setEnv.sh

$SETCOLOR_FAILURE

echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - build $PROJECT_NAME project" && $SETCOLOR_FAILURE
pushd $PROJECT_HOME
	echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - $PROJECT_HOME:"
	mvn clean install
popd

echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - build success" && $SETCOLOR_FAILURE

echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - Redeploying " && $SETCOLOR_FAILURE
echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - removing the old " && $SETCOLOR_FAILURE

rm -rf $TOMCAT_HOME/webapps/$BUILDWAR_NAME*

echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - deploying the new " && $SETCOLOR_FAILURE

cp $PROJECT_HOME/target/$BUILDWAR_NAME.war $TOMCAT_HOME/webapps/$BUILDWAR_NAME.war


echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - deployed success startJrebelDebugTomcat" && $SETCOLOR_BLUE

source startJrebelDebugTomcat.sh

