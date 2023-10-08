FROM FROM ubuntu:22.04
FROM python:3.8

ADD src /src

RUN pip install -r src/requirements.txt
RUN chmod +x src/youtube_feed_getter.pyc

ENTRYPOINT ["/src/youtube_feed_getter.pyc"]
