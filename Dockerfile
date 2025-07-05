
# Base image
FROM node:18-bullseye

# نصب پیش‌نیازها
USER root
RUN apt-get update && \
    apt-get install -y python3-pip ffmpeg && \
    pip install yt-dlp

# نصب n8n
RUN npm install -g n8n

# کپی کوکی به /tmp
COPY cookies.txt /tmp/cookies.txt

EXPOSE 5678

CMD ["n8n"]
