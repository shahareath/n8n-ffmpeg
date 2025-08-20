FROM n8nio/n8n:latest

# Install ffmpeg on Alpine
USER root
RUN apk add --no-cache ffmpeg

# Switch back to node user
USER node
