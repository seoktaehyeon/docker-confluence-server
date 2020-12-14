## Highlight

- Base image is [`atlassian/confluence-server:7.5`](https://hub.docker.com/r/atlassian/confluence-server/tags?page=1&ordering=-name&name=7.5)
- Image digest is `5d6d76e0f6fc`
- Support `MySQL`
- Timezone is `Asia/Shanghai`
- Support `Chinese`
- Contains `SSLPoke.class`
- License tool: `getConfLicense` and `getPluginLicense`

## How to install/start Jira Software

```bash
docker run -d -p 8090:8090 -p 8091:8091 -v /conf-data:/var/atlassian/application-data/confluence -it bxwill/confluence-server:7.5
```

## More

- [GitHub](https://github.com/seoktaehyeon/docker-confluence-server)