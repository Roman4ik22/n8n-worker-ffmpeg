FROM node:20-bullseye-slim

RUN apt-get update && \
    apt-get install -y ffmpeg curl && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g n8n

ENV N8N_PORT=5678
EXPOSE 5678

CMD ["n8n"]
