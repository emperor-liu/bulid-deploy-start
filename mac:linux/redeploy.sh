source setEnv.bat

echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - Redeploying " && $SETCOLOR_FAILURE
echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - removing the old " && $SETCOLOR_FAILURE

rm -rf $TOMCAT_HOME/webapps/$BUILDWAR_NAME*

echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - reploying the new " && $SETCOLOR_FAILURE

cp $PROJECT_HOME/target/$BUILDWAR_NAME.war $TOMCAT_HOME/webapps/$BUILDWAR_NAME.war


echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - reployed success" && $SETCOLOR_NORMAL

exit 0