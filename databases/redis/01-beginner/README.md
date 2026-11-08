# Beginner Guide - Redis

**Time:** 1 week

## Step 1: Install
```bash
docker run -p 6379:6379 redis:alpine
# or: brew install redis && redis-server
```

## Step 2: Redis CLI
```bash
redis-cli
SET greeting "Hello Redis"
GET greeting
INCR page:views
```

See [examples/hello.redis](../examples/hello.redis)

## Step 3: Use cases
| Pattern | Command |
|---------|---------|
| Cache | SET key value EX 3600 |
| Session | SET session:token data |
| Counter | INCR views |
| Queue | LPUSH / RPOP |

## Practice
1. Cache API response with 5-minute TTL
2. Leaderboard with sorted sets (ZADD)
3. Pub/Sub between two CLI sessions

-> [02-fundamentals/](../02-fundamentals/)
