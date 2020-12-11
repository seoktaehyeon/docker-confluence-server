FROM atlassian/confluence-server:7.9
LABEL maintainer="v.stone@163.com" \
      jdbc_url="https://confluence.atlassian.com/doc/database-jdbc-drivers-171742.html" \
      agent_url="https://gitee.com/pengzhile/atlassian-agent"
ADD https://qualitysphere.github.io/objects/mysql-connector-java-5.1.49.jar /opt/atlassian/confluence/lib/mysql-connector-java-5.1.49.jar
ADD https://qualitysphere.github.io/objects/atlassian-agent.jar /opt/atlassian/tool/atlassian-agent.jar
ADD https://qualitysphere.github.io/objects/SSLPoke.class /opt/atlassian/tool/SSLPoke.class
COPY tool/getConfLicense /usr/local/bin/getConfLicense
COPY tool/getPluginLicense /usr/local/bin/getPluginLicense
RUN chmod +x /usr/local/bin/getConfLicense && \
    chmod +x /usr/local/bin/getPluginLicense && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone
ADD https://qualitysphere.github.io/objects/msyh.ttf /usr/share/fonts
RUN fc-cache -fv
ENV JAVA_OPTS="-javaagent:/opt/atlassian/tool/atlassian-agent.jar"

