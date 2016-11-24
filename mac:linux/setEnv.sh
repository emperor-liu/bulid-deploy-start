# set ----------- TOMCAT_HOME homes  
export "TOMCAT_HOME=/Users/liujie/DevelopmentTools/apache-tomcat-8.0.28"
# set ----------- crawlerManager homes
export "PROJECT_NAME=crawlerManager"
export "BUILDWAR_NAME=crawlerManager"
export "PROJECT_HOME=/Users/liujie/prj/crawlerManager"

# set ----------- maven env
export "MAVEN_OPTS=-Xmx1024m -XX:MaxPermSize=256m"
export "MVN_ARGS="
export "MVN=mvn %MVN_ARGS% -Dmaven.test.skip=true -Dmaven.test.skip.exec=true "
export "JREBEL_HOME=/Users/liujie/DevelopmentTools/jrebel"

# set -color
SETCOLOR_FAILURE="echo -en \\033[1;32m"
SETCOLOR_BLUE="echo -en \\033[1;36m"
SETCOLOR_NORMAL="echo -en \\033[0;39m"