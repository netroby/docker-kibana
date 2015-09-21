# docker-kibana

Docker kibana, Decreased memory usage, better for low memory server/cloud/vps

```
 docker run --name some-kibana --link some-elasticsearch:elasticsearch -p 5601:5601 -d kibana
```
