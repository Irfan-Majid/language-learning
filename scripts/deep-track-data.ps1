# Technology-specific topic overrides for deep tracks
# Key: relative path with forward slashes (e.g. languages/python)

$script:DeepTrackOverrides = @{
    "languages/python" = @{
        "02" = @("Lists, tuples, sets, and dicts", "List comprehensions and generators", "Functions, *args, **kwargs", "Modules and virtual environments (venv)", "Exception handling and custom exceptions", "File I/O and pathlib")
        "03" = @("Classes, inheritance, and dataclasses", "Decorators and context managers", "Type hints and mypy", "pytest fundamentals", "Working with JSON and CSV", "requests library for HTTP")
        "04" = @("asyncio and async/await", "Multiprocessing vs threading", "Profiling with cProfile", "Packaging with pyproject.toml", "Security (SQL injection, secrets)", "Writing C extensions / Cython intro")
        "05" = @("CPython internals and GIL", "Contributing to CPython or PyPI packages", "Designing Python microservices", "Performance at scale (NumPy, pandas)", "Team style guides (PEP 8, ruff)", "Python vs Go/Rust for backends")
        "practice_02" = "CLI todo app: add, list, complete tasks. Store in JSON file."
        "practice_03" = "REST API with FastAPI: CRUD for notes with SQLite."
    }
    "languages/javascript" = @{
        "02" = @("Data types and typeof quirks", "Arrays: map, filter, reduce", "Objects and destructuring", "Template literals", "DOM manipulation", "try/catch error handling")
        "03" = @("Promises and async/await", "Fetch API and REST calls", "ES modules (import/export)", "Closures and scope", "Event loop basics", "npm and package.json")
        "practice_02" = "Build a click counter webpage with reset button."
        "practice_03" = "Fetch users from JSONPlaceholder API and render cards."
    }
    "languages/typescript" = @{
        "02" = @("Basic types: string, number, boolean", "Interfaces and type aliases", "Union and intersection types", "Functions with typed parameters", "Arrays and tuples", "tsconfig.json basics")
        "03" = @("Generics", "Utility types (Partial, Pick, Omit)", "Enums and literal types", "Type guards and narrowing", "Modules and declaration files", "Strict mode options")
        "04" = @("Conditional and mapped types", "Decorators (experimental)", "Performance and build optimization", "Monorepo with TypeScript", "Interop with JavaScript libraries", "ts-node and bundler integration")
        "practice_02" = "Convert a JavaScript module to TypeScript with interfaces."
        "practice_03" = "Typed API client for a public REST API."
    }
    "frameworks/react" = @{
        "02" = @("JSX syntax and rules", "Components: function vs class", "Props and prop drilling", "State with useState", "Event handling", "Conditional rendering and lists")
        "03" = @("useEffect for side effects", "Custom hooks", "Context API", "React Router basics", "Forms (controlled components)", "Fetching data in components")
        "04" = @("Performance: memo, useMemo, useCallback", "Code splitting and lazy loading", "Error boundaries", "State management (Zustand/Redux intro)", "Testing with React Testing Library", "SSR concepts with Next.js")
        "practice_02" = "Counter app with increment, decrement, reset."
        "practice_03" = "Todo list with localStorage persistence."
    }
    "frameworks/django" = @{
        "02" = @("Models and migrations", "Admin interface", "Views and URL routing", "Templates and template tags", "Forms and ModelForms", "Static files")
        "03" = @("Class-based views", "Django REST Framework intro", "Authentication and permissions", "Middleware", "QuerySet optimization", "Testing with Django TestCase")
        "practice_02" = "Blog app: Post model, list and detail views."
        "practice_03" = "REST API for blog with DRF serializers."
    }
    "frameworks/fastapi" = @{
        "02" = @("Path and query parameters", "Pydantic models", "Request body validation", "Response models and status codes", "Automatic OpenAPI docs", "Dependency injection basics")
        "03" = @("Database with SQLAlchemy", "JWT authentication", "Background tasks", "WebSockets intro", "Testing with TestClient", "CORS and middleware")
        "practice_02" = "CRUD API for items with in-memory store."
        "practice_03" = "User auth API with JWT and PostgreSQL."
    }
    "frameworks/laravel" = @{
        "02" = @("Routing and controllers", "Blade templates", "Eloquent ORM basics", "Migrations and seeders", "Middleware", "Artisan CLI")
        "03" = @("API resources and Sanctum auth", "Form requests and validation", "Queues and jobs", "Events and listeners", "PHPUnit testing", "Service container")
        "practice_02" = "Task manager with CRUD and Blade views."
        "practice_03" = "REST API with Sanctum token authentication."
    }
    "databases/postgresql" = @{
        "02" = @("CREATE TABLE and constraints", "SELECT, INSERT, UPDATE, DELETE", "WHERE, ORDER BY, LIMIT", "JOINs (INNER, LEFT)", "Indexes (B-tree)", "psql and pgAdmin")
        "03" = @("Transactions and isolation levels", "EXPLAIN ANALYZE", "Window functions", "JSON/JSONB columns", "Full-text search", "pg_dump backup/restore")
        "04" = @("Replication (streaming)", "Partitioning", "Connection pooling (PgBouncer)", "Row-level security", "Monitoring (pg_stat)", "Vacuum and autovacuum tuning")
        "practice_02" = "Design schema for e-commerce: users, products, orders."
        "practice_03" = "Optimize slow query with indexes and EXPLAIN."
    }
    "databases/mongodb" = @{
        "02" = @("Documents and collections", "insertOne, find, updateOne", "Query operators ($gt, $in)", "Indexes", "mongosh shell", "Schema design patterns")
        "03" = @("Aggregation pipeline", "Transactions", "Text search", "Change streams", "Mongoose ODM (Node)", "Data modeling: embed vs reference")
        "practice_02" = "Store and query a product catalog."
        "practice_03" = "Aggregation: sales report by category."
    }
    "data-ai/machine-learning" = @{
        "02" = @("NumPy arrays and operations", "Pandas DataFrames", "Data cleaning and missing values", "Train/test split", "scikit-learn estimators", "Accuracy, precision, recall")
        "03" = @("Feature engineering", "Cross-validation", "Hyperparameter tuning (GridSearch)", "Classification vs regression", "Model persistence (joblib)", "Overfitting and regularization")
        "04" = @("Ensemble methods (Random Forest, XGBoost)", "Pipeline API", "Imbalanced data handling", "Model interpretation (SHAP intro)", "MLflow experiment tracking", "Deployment with FastAPI")
        "05" = @("MLOps and model monitoring", "Feature stores", "A/B testing models", "Responsible AI and bias", "Team ML platform design", "LLM vs classical ML tradeoffs")
        "practice_02" = "Predict house prices with linear regression on CSV."
        "practice_03" = "Classify iris/species with cross-validation."
    }
    "data-ai/rag-applications" = @{
        "02" = @("Embeddings explained", "Vector databases (Chroma, Pinecone)", "Document chunking strategies", "LangChain Document loaders", "Similarity search", "Basic RAG pipeline")
        "03" = @("Retrieval quality tuning", "Hybrid search (keyword + vector)", "Re-ranking", "Prompt templates for RAG", "Evaluation metrics (faithfulness)", "Caching embeddings")
        "04" = @("Multi-modal RAG", "Agentic RAG patterns", "Production latency optimization", "Cost control (token budgets)", "Security (prompt injection)", "Observability and tracing")
        "practice_02" = "RAG over 5 text files with Chroma + OpenAI."
        "practice_03" = "PDF Q&A app with chunk overlap tuning."
    }
    "data-ai/ai-engineering" = @{
        "02" = @("LLM API basics (OpenAI, Anthropic)", "Prompt engineering patterns", "Token counting and costs", "Structured outputs (JSON mode)", "Error handling and retries", "Environment variables and secrets")
        "03" = @("LangChain / LlamaIndex chains", "Tool calling and function use", "Streaming responses", "Rate limiting and queues", "FastAPI LLM endpoints", "Basic guardrails")
        "04" = @("Multi-agent systems", "Fine-tuning vs RAG decisions", "Evaluation frameworks", "CI/CD for AI apps", "Latency and caching strategies", "Compliance and data privacy")
        "practice_02" = "Chat API with system prompt and history."
        "practice_03" = "Deploy LLM endpoint with FastAPI + Docker."
    }
    "devops/kubernetes" = @{
        "02" = @("Pods and Deployments", "Services (ClusterIP, NodePort)", "ConfigMaps and Secrets", "kubectl essentials", "Namespaces", "Labels and selectors")
        "03" = @("Ingress controllers", "Helm charts", "Resource limits and requests", "Liveness and readiness probes", "StatefulSets", "PersistentVolumes")
        "04" = @("RBAC and network policies", "Horizontal Pod Autoscaler", "GitOps with ArgoCD", "Service mesh intro (Istio)", "Multi-cluster patterns", "Security scanning")
        "practice_02" = "Deploy nginx Deployment with 2 replicas + Service."
        "practice_03" = "Helm chart for a web app with ConfigMap."
    }
    "devops/cloud" = @{
        "02" = @("IaaS vs PaaS vs SaaS", "Regions and availability zones", "IAM users, roles, policies", "VPC / virtual network basics", "Object storage (S3/Blob/GCS)", "Cloud CLI setup")
        "03" = @("Compute: VMs vs containers vs serverless", "Managed databases", "Load balancers", "CDN and caching", "Cost monitoring and budgets", "CI/CD to cloud")
        "04" = @("Multi-AZ high availability", "Disaster recovery planning", "Cloud security best practices", "Infrastructure as Code (Terraform)", "Kubernetes managed services (EKS/AKS/GKE)", "FinOps optimization")
        "practice_02" = "Create storage bucket and upload a file via CLI."
        "practice_03" = "Deploy containerized app to Cloud Run or App Service."
    }
    "frameworks/prisma" = @{
        "02" = @("schema.prisma syntax", "Models and relations", "prisma migrate", "Prisma Client CRUD", "Seeding data", "DATABASE_URL config")
        "03" = @("Relations: one-to-many, many-to-many", "Transactions", "Raw SQL queries", "Middleware", "Testing with test DB", "Prisma with Next.js")
        "practice_02" = "Blog schema: User, Post, Comment with migrations."
        "practice_03" = "REST API with Prisma + Express or Fastify."
    }
}
