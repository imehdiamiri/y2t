
# Base image
FROM node:18-bullseye

# نصب ابزارهای موردنیاز
USER root
RUN apt-get update && \
    apt-get install -y python3-pip ffmpeg && \
    pip install yt-dlp

# نصب n8n
RUN npm install -g n8n

# Volume برای دیتا
VOLUME /home/node/.n8n

# پورت
EXPOSE 5678

# اجرای n8n
CMD ["n8n"]
