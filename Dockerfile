
# Base image
FROM n8nio/n8n

# Install yt-dlp
USER root
RUN apt-get update && apt-get install -y python3-pip ffmpeg && pip install yt-dlp

# Switch back to n8n user
USER node

EXPOSE 5678

CMD ["n8n"]
