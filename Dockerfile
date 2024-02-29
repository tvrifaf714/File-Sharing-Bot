FROM python:3.8-slim-buster
WORKDIR /app

RUN apt -qq update && apt-get -y upgrade && apt -qq install -y git wget pv jq aria2 wget python3-dev mediainfo git
RUN apt-get install -y --no-install-recommends ffmpeg
COPY . .
RUN pip3 install -r requirements.txt

COPY . .

CMD python3 main.py
