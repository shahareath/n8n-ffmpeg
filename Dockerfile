FROM n8nio/n8n:latest

# Install FFmpeg
USER root
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Run as n8n user
USER node
