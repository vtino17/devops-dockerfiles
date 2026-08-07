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
| `postgres` | PostgreSQL + optional pgAdmin | 5432, 5050 |
| `monitoring` | Prometheus + Grafana + Node Exporter | 9090, 3000, 9100 |

## Usage

```bash
git clone https://github.com/vtino17/devops-dockerfiles.git
cd devops-dockerfiles/<stack>
docker compose up -d
```

Database and observability ports bind to `127.0.0.1` by default. Set the
corresponding `*_BIND_ADDRESS` variable only when remote access is intentional
and protected by a firewall or private network. Create the password files under
each stack's `secrets/` directory before starting services that use them.
