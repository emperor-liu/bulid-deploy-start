
## jrebel介绍：

>Jrebel 可快速实现热部署，节省了大量重启时间，
提高了个人开发效率。不过这个是收费的，网上很多地方都可下载到各个版本的破解版。如果每个人都去网上下载然后继承到eclipse中，再去破解会浪费一些不必要的时间，所以我们换另一种方式去使用，灵感来自于公司的上一个项目中的一些脚本，现在只不过做了一些升级吧。
********************
## 首先使用jrebel需要在项目中添加以下配置：
>src/main/resources/rebel.xml
>* web项目：
>
>> ```
>>    <?xml version="1.0" encoding="UTF-8"?>
>>    <application xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.zeroturnaround.com" xsi:schemaLocation="http://www.zeroturnaround.com http://www.zeroturnaround.com/alderaan/rebel-2_0.xsd">
>>        <classpath>
>>            <dir name="/Users/liujie/prj/crawlerManager/target/classes">
>>           </dir>
>>        </classpath>
>>        <web>
>>            <link target="/">
>>                <dir name="/Users/liujie/prj/crawlerManager/src/main/webapp">
>>                </dir>
>>            </link>
>>        </web>
>>    </application>
>
>* 普通项目：
>
>> ```
>>    <?xml version="1.0" encoding="UTF-8"?>
>>	<application xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.zeroturnaround.com" xsi:schemaLocation="http://www.zeroturnaround.com http://www.zeroturnaround.com/alderaan/rebel-2_0.xsd">
>>	    <classpath>
>>	        <dir name="/Users/liujie/prj/crawlerManager/target/classes">
>>	        </dir>
>>	    </classpath>
>>	</application>
>> ```

******************************************************	
## maven 快速编辑 热部署脚本
>脚本介绍:
>> * setEnv.sh(bat) 配置环境变量
>> * build-deploy-start.sh(bat)编译源码，打包tomcat（默认jrebel－debug模式启动
>> * redeploy.sh 重新部署war到tomcat并不会重新编译
>> * startJrebelDebugTomcat.sh(bat) jrebel－debug模式启动
>> * startJrebelTomcat.sh(bat) jrebel模式启动
>> * start.sh(bat) 普通模式启动
>> * stop.sh(bat) 停止
> ******************************************************
> ### setEnv.sh(bat)详解
>
> ```
> # set ----------- TOMCAT_HOME homes
> export "TOMCAT_HOME=/Users/liujie/DevelopmentTools/apache-tomcat-8.0.28"
> # set ----------- test homes
> export "PROJECT_NAME=test"  #项目名称
> export "BUILDWAR_NAME=test" #war name
> export "PROJECT_HOME=/Users/liujie/prj/test" #项目路径
> # set ----------- maven env
> export "MAVEN_OPTS=-Xmx1024m -XX:MaxPermSize=256m"
> export "MVN_ARGS="
> export "MVN=mvn %MVN_ARGS% -Dmaven.test.skip=true -Dmaven.test.skip.exec=true "
> export "JREBEL_HOME=/Users/liujie/DevelopmentTools/jrebel" ＃jrebel存放路径
> 
> # set -color
> SETCOLOR_FAILURE="echo -en \\033[1;32m" 
> SETCOLOR_BLUE="echo -en \\033[1;36m"
> SETCOLOR_NORMAL="echo -en \\033[0;39m"
> ```
******************************************************
> ### PS：关于startJrebelDebugTomcat／startJrebelTomcat脚本中“JAVA_OPTS＝－agentpath”配置：
> jrebel64 数字代表系统版本号
> ```
> windows：$JREBEL_HOME/lib/jrebel64.dll
> mac：$JREBEL_HOME/lib/libjrebel64.dylib
> linux：$JREBEL_HOME/lib/libjrebel64.so
> ```
******************************************************

> ### 如果是maven model项目参考一下配置
> ```
> 项目路径：/Users/liujie/prj/testModel
>  model: /Users/liujie/prj/testModel/model1
>         /Users/liujie/prj/testModel/model2
> 则setEnv配置文件中 项目路径配置为：/Users/liujie/prj/testModel
> pushd $PROJECT_HOME/model1
>   echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - $PROJECT_HOME:"
>   mvn clean install
> popd
> pushd $PROJECT_HOME/model2
>   echo "`date +%Y/%m/%d-%H:%M:%S` - [INFO] - $PROJECT_HOME:"
>   mvn clean install
> popd
>```


<a href="https://www.lljqiu.com/blog/?p=128">详情请看</a>

