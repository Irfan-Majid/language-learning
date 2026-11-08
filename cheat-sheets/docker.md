# Docker Cheat Sheet

```bash
# Images
docker build -t myapp:1.0 .
docker images
docker pull nginx:alpine
docker rmi IMAGE_ID

# Containers
docker run -d -p 8080:80 --name web nginx:alpine
docker ps              # running
docker ps -a           # all
docker stop web
docker rm web
docker logs web
docker exec -it web sh

# Volumes
docker run -v $(pwd)/data:/app/data myapp

# Docker Compose
docker compose up -d
docker compose down
docker compose logs -f

# Cleanup
docker system prune -a
```

```dockerfile
# Dockerfile basics
FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
```

**Examples:** [devops/docker/examples/](../devops/docker/examples/)
