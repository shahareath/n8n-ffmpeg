# Use Node.js LTS
FROM node:18-bullseye

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Install n8n globally
RUN npm install -g n8n

# Create app directory
WORKDIR /data

# Expose Render's dynamic port
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0
ENV WEBHOOK_TUNNEL_URL=https://n8n-ffmpeg-8kkr.onrender.com/

EXPOSE $PORT

# Start n8n
CMD ["n8n"]
