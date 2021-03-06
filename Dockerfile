FROM atlassian/confluence-server:7.9
LABEL maintainer="v.stone@163.com" \
      jdbc_url="https://confluence.atlassian.com/doc/database-jdbc-drivers-171742.html" \
      agent_url="https://gitee.com/pengzhile/atlassian-agent"
ADD https://github.com/QualitySphere/QualitySphere.github.io/raw/master/objects/mysql-connector-java-5.1.49.jar /opt/atlassian/confluence/lib/mysql-connector-java-5.1.49.jar
ADD https://github.com/QualitySphere/QualitySphere.github.io/raw/master/objects/atlassian-agent.jar /opt/atlassian/tool/atlassian-agent.jar
ADD https://github.com/QualitySphere/QualitySphere.github.io/raw/master/objects/SSLPoke.class /opt/atlassian/tool/SSLPoke.class
COPY tool/getConfLicense /usr/local/bin/getConfLicense
COPY tool/getPluginLicense /usr/local/bin/getPluginLicense
RUN chmod +x /usr/local/bin/getConfLicense && \
    chmod +x /usr/local/bin/getPluginLicense && \
    chmod -R 777 /opt/atlassian/tool/ && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone
ADD https://github.com/QualitySphere/QualitySphere.github.io/raw/master/objects/msyh.ttf /usr/share/fonts
RUN chmod 777 /usr/share/fonts/msyh.ttf && fc-cache -fv
ENV JAVA_OPTS="-javaagent:/opt/atlassian/tool/atlassian-agent.jar"

