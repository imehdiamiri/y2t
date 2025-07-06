# Base: Alpine Node
FROM node:20-alpine

# کاربر روت
USER root

# نصب ffmpeg + pip + yt-dlp + bash + curl
RUN apk update && \
    apk add --no-cache ffmpeg py3-pip curl bash && \
    pip install -U yt-dlp

# نصب n8n به صورت Global
RUN npm install -g n8n

# Volume برای دیتا
VOLUME ["/home/node/.n8n"]

# پورت
EXPOSE 5678

# اجرای n8n
CMD ["n8n"]
