FROM docker.io/dragonflydb/dragonfly:v1.27.1

LABEL org.opencontainers.image.source="https://github.com/INAPP-Mobile/railway-dragonfly"

# Dragonfly port - use $PORT if set (Railway sets this), else default to 6379
EXPOSE 6379

# Healthcheck - test Redis protocol ping (defaults to port 6379)
HEALTHCHECK --interval=30s --timeout=5s \
  CMD redis-cli ping || exit 1

# Entrypoint to respect Railway's PORT env var
ENTRYPOINT ["sh", "-c", "exec dragonfly --port ${PORT:-6379}"]