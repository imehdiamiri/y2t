FROM n8nio/n8n

USER root

RUN apk update && \
    apk add --no-cache ffmpeg py3-pip && \
    pip install -U yt-dlp

USER node

CMD ["n8n"]
