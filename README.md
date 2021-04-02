[![docker](https://img.shields.io/static/v1?style=for-the-badge&logo=docker&label=docker&message=bxwill/confluence-server&color=2496ED)](https://hub.docker.com/r/bxwill/confluence-server)

## Highlight

- Base image is [`atlassian/confluence-server:7.9`](https://hub.docker.com/r/atlassian/confluence-server/tags?page=1&ordering=-name&name=7.9)
- Support `Chinese`
- Support `MySQL`
- Support auto set JVM memory 
- Timezone is `Asia/Shanghai`
- `SSLPoke.class` under `/opt`
- Tool
  - `getConfLicense`
  - `getPluginLicense`
  - `setMem.sh`

## How to install/start Jira Software

```bash
docker run -d -p 8090:8090 -p 8091:8091 -v /conf-data:/var/atlassian/application-data/confluence -it bxwill/confluence-server:7.9
```

## More

- [GitHub](https://github.com/seoktaehyeon/docker-confluence-server)

- use SSLPoke to check SSL
```bash
cd /opt
java SSLPoke qualitysphere.github.io 443
```
