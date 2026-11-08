# Beginner Guide — Docker

**Audience:** Developers and DevOps beginners  
**Time:** 1 week

---

## What Is Docker?

**Containerization** — package your app + dependencies into a portable container. "Works on my machine" → works everywhere.

---

## Install

https://docs.docker.com/get-started/get-docker/

Verify: `docker --version`

---

## First Container

```bash
docker run hello-world
docker run -p 8080:80 nginx
# Open http://localhost:8080
```

---

## Build Your Own

```bash
cd devops/docker/examples
docker build -t my-app .
docker run -p 8080:80 my-app
```

See [examples/Dockerfile](../examples/Dockerfile)

---

## Core Concepts

| Concept | Description |
|---------|-------------|
| **Image** | Blueprint (recipe) |
| **Container** | Running instance of image |
| **Dockerfile** | Instructions to build image |
| **docker-compose** | Run multiple containers together |
| **Volume** | Persistent data storage |

---

## Next → [Kubernetes](../kubernetes/) for production orchestration
