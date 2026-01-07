# n8n v1 সিরিজের ইমেজ ব্যবহার করুন যাতে apk পাওয়া যায়
FROM n8nio/n8n:1.71.1

# এখন ffmpeg ইনস্টল হবে
USER root
RUN apk add --no-cache ffmpeg

# আগের মতো ইউসারে ফিরে যান
USER node

EXPOSE 5678
CMD ["n8n", "start"]
