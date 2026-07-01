# Deploy and Host

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/dragonfly)

![OG Image](https://raw.githubusercontent.com/INAPP-Mobile/railway-dragonfly/main/og-image.svg)

Dragonfly is a Redis-compatible, high-performance in-memory database. It's a modern alternative to Redis with 30K+ GitHub stars, typically 25% less memory usage, and up to 70% better performance.

## About Hosting

Dragonfly runs as a single container on Railway with:
- Port: 6379 (Redis-compatible, automatically managed by Railway)
- No external dependencies - it IS the database
- ~48MB Docker image fits any tier

## Why Deploy

- Drop-in Redis replacement - same protocol, zero code changes
- Better performance - up to 70% faster than Redis
- Lower memory usage - typically 25% less
- Single binary deployment
- Massive community (30K+ GitHub stars)

## Common Use Cases

- Session cache for web applications
- Real-time analytics and counters
- Leaderboards and rate limiting
- Message queues and pub/sub
- Primary database for small workloads

## Dependencies for Dragonfly

### Deployment Dependencies

No external dependencies required.

---

## Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `DRAGONFLY_PORT` | Internal port | 6379 |
| `DRAGONFLY_REQUIREPASS` | Auth password | (empty) |
| `DRAGONFLY_MAXMEMORY` | Max memory limit | (empty) |
| `DRAGONFLY_MAXMEMORY_POLICY` | Eviction policy | (empty) |
