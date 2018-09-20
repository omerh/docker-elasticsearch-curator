# Manage ES filebeat indices using a curator container


```
docker run --rm ES_HOST=elastic_host -e DAYS_TO_KEEP=days_to_keep omerha/curator:latest
```

>This image use environment variables feature, which is expiremental according to elastic [documents](https://www.elastic.co/guide/en/elasticsearch/client/curator/current/envvars.html)