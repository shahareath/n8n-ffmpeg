# 'latest' এর বদলে 'latest-alpine' ব্যবহার করুন যাতে apk পাওয়া যায়
FROM n8nio/n8n:latest-alpine

# এখন ffmpeg ইনস্টল করা যাবে
USER root
RUN apk add --no-cache ffmpeg

# আগের মতো n8n ইউসারে ফিরে যান
USER node

# পোর্ট এবং স্টার্ট কমান্ড
EXPOSE 5678
CMD ["n8n", "start"]
