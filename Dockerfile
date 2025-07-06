FROM n8nio/n8n

USER root

RUN apt-get update &&     apt-get install -y ffmpeg python3-pip &&     pip install -U yt-dlp

USER node

CMD ["n8n"]
