# DevOps Dockerfiles

Production-ready Docker Compose stacks for common services.

## Stacks

| Stack | Services | Port |
|-------|----------|------|
| `nginx` | Nginx + SSL + reverse proxy | 80, 443 |
| `postgres` | PostgreSQL + pgAdmin | 5432 |
| `redis` | Redis + RedisInsight | 6379 |
| `mongodb` | MongoDB + Mongo Express | 27017 |
| `kafka` | Kafka + Zookeeper + Kafdrop | 9092 |
| `monitoring` | Prometheus + Grafana + Node Exporter | 9090, 3000 |
| `elk` | Elasticsearch + Logstash + Kibana | 9200, 5601 |
| `proxy` | Traefik + Cloudflare | 80, 443 |

## Usage

```bash
git clone https://github.com/vtino17/devops-dockerfiles.git
cd devops-dockerfiles/<stack>
docker compose up -d
```

Each stack includes environment files, health checks, and optional TLS.
