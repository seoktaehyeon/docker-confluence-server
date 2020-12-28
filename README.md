## Highlight

- Base image is [`atlassian/confluence-server:7.9`](https://hub.docker.com/r/atlassian/confluence-server/tags?page=1&ordering=-name&name=7.9)
- Image digest is `4fcbdeaf015a`
- Support `MySQL`
- Timezone is `Asia/Shanghai`
- Support `Chinese`
- Contains `SSLPoke.class`
- License tool: `getConfLicense` and `getPluginLicense`

## How to install/start Jira Software

```bash
docker run -d -p 8090:8090 -p 8091:8091 -v /conf-data:/var/atlassian/application-data/confluence -it bxwill/confluence-server:7.9
```

## More

- [GitHub](https://github.com/seoktaehyeon/docker-confluence-server)