FROM n8nio/n8n:latest

# Install ffmpeg
USER root
RUN apk add --no-cache ffmpeg

# Switch back to node user
USER node

# Expose n8n default port
EXPOSE 5678

