# DevOps Dockerfiles

[![License](https://img.shields.io/badge/License-MIT-22AA55?style=flat-square)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/vtino17/devops-dockerfiles?style=flat-square&logo=github)](https://github.com/vtino17/devops-dockerfiles/stargazers)
[![Docker](https://img.shields.io/badge/Docker-Compose-2496ED?style=flat-square&logo=docker)](https://docker.com)
[![Last commit](https://img.shields.io/github/last-commit/vtino17/devops-dockerfiles?style=flat-square)](https://github.com/vtino17/devops-dockerfiles/commits)

Production-ready Docker Compose stacks for common services.

## Stacks

| Stack | Services | Port |
|-------|----------|------|
| `nginx` | Nginx + SSL + reverse proxy | 80, 443 |
| `postgres` | PostgreSQL + pgAdmin | 5432 |
| `redis` | `mongodb` | `kafka` | `monitoring` | Prometheus + Grafana + Node Exporter | 9090, 3000 |
| `elk` | Elasticsearch + Logstash + Kibana | 9200, 5601 |
| `proxy` | Traefik + Cloudflare | 80, 443 |

## Usage

```bash
git clone https://github.com/vtino17/devops-dockerfiles.git
cd devops-dockerfiles/<stack>
docker compose up -d
```

Each stack includes environment files, health checks, and optional TLS.

