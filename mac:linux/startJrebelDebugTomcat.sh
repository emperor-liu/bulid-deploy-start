source setEnv.sh

export "JAVA_OPTS=-agentpath:$JREBEL_HOME/lib/libjrebel64.dylib -Drebel.license=$JREBEL_HOME/jrebel.lic -Drebel.disable_update=true $JAVA_OPTS"
export "CATALINA_OPTS=-server -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8000"
pushd $TOMCAT_HOME/bin
source startup.sh
