## Highlight

- Base image is `atlassian/confluence-server:7.9`
- Image digest is `95991a2dccaa`
- Support `MySQL`
- Timezone is `Asia/Shanghai`
- Contains `SSLPoke.class`
- License tool: `getConfLicense` and `getPluginLicense`
- Support Chinese

## How to install/start Jira Software

```bash
docker run -d -p 8080:8080 -v /jira-data:/var/atlassian/application-data/jira -it bxwill/jira-software:8.12
```