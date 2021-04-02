FROM atlassian/confluence-server:7.9
LABEL maintainer="v.stone@163.com" \
      jdbc_url="https://confluence.atlassian.com/doc/database-jdbc-drivers-171742.html" \
      agent_url="https://gitee.com/pengzhile/atlassian-agent"

COPY tool/getConfLicense /usr/local/bin
COPY tool/getPluginLicense /usr/local/bin
COPY tool/setMem.sh /usr/local/bin
RUN chmod 777 /usr/local/bin/getConfLicense /usr/local/bin/getPluginLicense /usr/local/bin/setMem.sh

ADD https://qualitysphere.github.io/objects/atlassian-agent.jar /opt
ADD https://qualitysphere.github.io/objects/SSLPoke.class /opt
RUN chmod 777 /opt/atlassian-agent.jar /opt/SSLPoke.class \
    && sed -i 's#${START_CONFLUENCE_JAVA_OPTS}#${START_CONFLUENCE_JAVA_OPTS} -javaagent:/opt/atlassian-agent.jar#' /opt/atlassian/confluence/bin/setenv.sh \
    && sed -i "4c import os\n\nos.system('setMem.sh')\n" /entrypoint.py

ADD https://downloads.mysql.com/archives/get/p/3/file/mysql-connector-java-5.1.49.tar.gz /opt
RUN cd /opt \
    && tar zvxf mysql-connector-java-5.1.49.tar.gz \
    && cp /opt/mysql-connector-java-5.1.49/mysql-connector-java-5.1.49.jar /opt/atlassian/confluence/lib \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' > /etc/timezone
ADD https://qualitysphere.github.io/objects/msyh.ttf /usr/share/fonts
RUN chmod 777 /usr/share/fonts/msyh.ttf \
    && fc-cache -fv
