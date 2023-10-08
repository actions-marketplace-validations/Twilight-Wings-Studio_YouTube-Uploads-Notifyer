FROM python:latest

ADD src /src
ADD requirements.txt /requirements.txt

RUN pip install -r requirements.txt
RUN chmod +x src/youtube_feed_getter.pyc

ENTRYPOINT ["/src/youtube_feed_getter.pyc"]
