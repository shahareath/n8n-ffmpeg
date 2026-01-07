# Debian ভিত্তিক n8n ইমেজ ব্যবহার করুন (এটিতে apt-get পাওয়া যাবে)
FROM n8nio/n8n:latest-debian

# এখন ffmpeg ইনস্টল করুন
USER root
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# আগের মতো ইউসারে ফিরে যান
USER node

EXPOSE 5678
CMD ["n8n", "start"]
