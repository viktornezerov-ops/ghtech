FROM ubuntu:22.04
# Ставим curl, wget, git и чистим кэш, чтобы образ не раздувался
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl wget git ca-certificates \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
CMD ["/bin/bash"]
