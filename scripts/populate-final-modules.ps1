# Populate remaining modules: Cloud, Elasticsearch, Message Queues, Prisma
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot

function Ensure-Dir($p) { if (-not (Test-Path $p)) { New-Item -ItemType Directory -Force -Path $p | Out-Null } }

$modules = @(
    @{
        Path = "devops/cloud"
        Name = "Cloud Platforms"
        Cat = "DevOps"
        Desc = "AWS, Azure, and GCP - the three major cloud providers for deploying modern applications"
        Docs = "https://aws.amazon.com/getting-started/"
        Related = "terraform, kubernetes, docker"
        Example = @'
# AWS CLI examples (install: https://aws.amazon.com/cli/)
aws sts get-caller-identity
aws s3 ls
aws ec2 describe-instances --query "Reservations[].Instances[].InstanceId"

# Azure CLI
az login
az group list
az vm list

# GCP CLI
gcloud auth login
gcloud projects list
gcloud compute instances list
'@
        ExampleFile = "cli-basics.sh"
    },
    @{
        Path = "databases/elasticsearch"
        Name = "Elasticsearch"
        Cat = "Database / Search"
        Desc = "Distributed search and analytics engine for full-text search, logs, and observability"
        Docs = "https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html"
        Related = "mongodb, postgresql, kibana"
        Example = @'
// Elasticsearch query examples (Kibana Dev Tools or curl)
// PUT /products
// { "mappings": { "properties": { "name": { "type": "text" }, "price": { "type": "float" } } } }

// POST /products/_doc
// { "name": "Laptop", "price": 999.99 }

// GET /products/_search
// { "query": { "match": { "name": "laptop" } } }

// Node.js client example:
const { Client } = require("@elastic/elasticsearch");
const client = new Client({ node: "http://localhost:9200" });

async function searchProducts(q) {
  const result = await client.search({
    index: "products",
    query: { match: { name: q } },
  });
  return result.hits.hits;
}
'@
        ExampleFile = "search.js"
    },
    @{
        Path = "essentials/message-queues"
        Name = "Message Queues"
        Cat = "Essential"
        Desc = "RabbitMQ and Apache Kafka for async messaging, event-driven architecture, and microservices"
        Docs = "https://www.rabbitmq.com/tutorials"
        Related = "redis, kubernetes, microservices"
        Example = @'
# RabbitMQ - Python (pip install pika)
import pika
connection = pika.BlockingConnection(pika.ConnectionParameters("localhost"))
channel = connection.channel()
channel.queue_declare(queue="tasks")
channel.basic_publish(exchange="", routing_key="tasks", body="Hello RabbitMQ!")
connection.close()

# Kafka - Python (pip install kafka-python)
from kafka import KafkaProducer, KafkaConsumer
producer = KafkaProducer(bootstrap_servers="localhost:9092")
producer.send("events", b"user_signed_up")
producer.flush()
'@
        ExampleFile = "messaging.py"
    },
    @{
        Path = "frameworks/prisma"
        Name = "Prisma"
        Cat = "ORM / Database Tool"
        Desc = "Modern TypeScript ORM for Node.js with schema-first design and auto-generated client"
        Docs = "https://www.prisma.io/docs"
        Related = "nodejs, postgresql, typescript"
        Example = @'
// schema.prisma
// datasource db { provider = "postgresql" url = env("DATABASE_URL") }
// generator client { provider = "prisma-client-js" }
// model User {
//   id    Int    @id @default(autoincrement())
//   email String @unique
//   name  String?
// }

// app.ts - npx prisma generate && npx prisma db push
import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

async function main() {
  const user = await prisma.user.create({
    data: { email: "alice@example.com", name: "Alice" },
  });
  console.log(user);
  const all = await prisma.user.findMany();
  console.log(all);
}

main().finally(() => prisma.$disconnect());
'@
        ExampleFile = "schema-example.ts"
    }
)

$tracks = @("01-beginner","02-fundamentals","03-intermediate","04-advanced","05-expert","06-testing","07-project-management","08-stack-switching")

foreach ($m in $modules) {
    $base = Join-Path $root $m.Path
    foreach ($t in $tracks) { Ensure-Dir (Join-Path $base $t) }
    Ensure-Dir (Join-Path $base "examples")

    $related = ($m.Related -split ", " | ForEach-Object { "- $_" }) -join "`n"
    @"
# $($m.Name)

> **Category:** $($m.Cat)

---

## What Is $($m.Name)?

$($m.Desc)

---

## Learning Tracks

| Track | Folder |
|-------|--------|
| Beginner | [01-beginner](./01-beginner/) |
| Fundamentals | [02-fundamentals](./02-fundamentals/) |
| Intermediate | [03-intermediate](./03-intermediate/) |
| Advanced | [04-advanced](./04-advanced/) |
| Expert | [05-expert](./05-expert/) |
| Testing | [06-testing](./06-testing/) |
| Project Management | [07-project-management](./07-project-management/) |
| Stack Switching | [08-stack-switching](./08-stack-switching/) |

---

## Quick Start

1. Read [01-beginner/](./01-beginner/)
2. Run [examples/](./examples/)
3. See [resources.md](./resources.md)

---

## Related

$related
"@ | Set-Content (Join-Path $base "README.md") -Encoding UTF8

    @"
# $($m.Name) - Resources

| Resource | URL |
|----------|-----|
| Official docs | $($m.Docs) |
| Stack Overflow | https://stackoverflow.com/search?q=$($m.Name) |
"@ | Set-Content (Join-Path $base "resources.md") -Encoding UTF8

    @"
# Beginner Guide - $($m.Name)

**Time:** 1-2 weeks

---

## Step 1: Read the Overview

$($m.Desc)

Official docs: $($m.Docs)

---

## Step 2: Run Examples

See [examples/](../examples/$($m.ExampleFile))

---

## Step 3: Core Concepts

Work through official getting-started tutorial end to end.

---

## Next

-> [02-fundamentals/](../02-fundamentals/)
"@ | Set-Content (Join-Path $base "01-beginner\README.md") -Encoding UTF8

    Set-Content (Join-Path $base "examples\$($m.ExampleFile)") $m.Example -Encoding UTF8
}

# Cloud provider sub-guides
$cloudBase = Join-Path $root "devops\cloud"
Ensure-Dir (Join-Path $cloudBase "providers")
@'
# AWS (Amazon Web Services)

**Market share:** Largest cloud provider globally

## Core Services

| Service | Purpose |
|---------|---------|
| EC2 | Virtual servers |
| S3 | Object storage |
| RDS | Managed databases |
| Lambda | Serverless functions |
| IAM | Identity and access |
| VPC | Networking |

## Free Tier

https://aws.amazon.com/free/ - 12 months free for many services

## Learning Path

1. Create AWS account + enable MFA
2. Launch EC2 instance (Linux)
3. Store file in S3
4. Deploy static site to S3 + CloudFront
5. Add RDS PostgreSQL database

## Certifications

- AWS Cloud Practitioner (entry)
- AWS Solutions Architect Associate (popular)

## Docs

https://docs.aws.amazon.com/
'@ | Set-Content (Join-Path $cloudBase "providers\aws.md") -Encoding UTF8

@'
# Microsoft Azure

**Strengths:** Enterprise, Microsoft stack (.NET, Active Directory)

## Core Services

| Service | Purpose |
|---------|---------|
| Virtual Machines | Compute |
| Blob Storage | Object storage |
| Azure SQL | Managed SQL |
| Azure Functions | Serverless |
| Azure AD | Identity |
| AKS | Managed Kubernetes |

## Free Tier

https://azure.microsoft.com/free/

## Learning Path

1. Create Azure account
2. Deploy VM via Portal
3. Create Storage Account + upload blob
4. Deploy .NET app to App Service
5. Explore Azure DevOps for CI/CD

## Certifications

- AZ-900 Azure Fundamentals
- AZ-204 Azure Developer

## Docs

https://learn.microsoft.com/azure/
'@ | Set-Content (Join-Path $cloudBase "providers\azure.md") -Encoding UTF8

@'
# Google Cloud Platform (GCP)

**Strengths:** Data/ML (BigQuery, Vertex AI), Kubernetes (GKE invented K8s)

## Core Services

| Service | Purpose |
|---------|---------|
| Compute Engine | VMs |
| Cloud Storage | Object storage |
| Cloud SQL | Managed databases |
| Cloud Functions | Serverless |
| BigQuery | Data warehouse |
| GKE | Managed Kubernetes |

## Free Tier

https://cloud.google.com/free - $300 credit for new users

## Learning Path

1. Create GCP project
2. Enable billing (free tier)
3. Launch Compute Engine VM
4. Query public dataset in BigQuery
5. Deploy container to Cloud Run

## Certifications

- Google Cloud Digital Leader
- Associate Cloud Engineer

## Docs

https://cloud.google.com/docs
'@ | Set-Content (Join-Path $cloudBase "providers\gcp.md") -Encoding UTF8

Write-Host "Created 4 final modules with examples and cloud provider guides"
