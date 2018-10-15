FROM python:3-alpine3.7

RUN wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl \
  && chmod a+rx /usr/local/bin/youtube-dl \
  && apk add --no-cache --virtual ffmpeg

ENTRYPOINT ["/usr/local/bin/youtube-dl"]
