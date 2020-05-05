FROM python:alpine3.11
RUN apk update
RUN apk add git
RUN git clone https://github.com/Leeon123/CC-attack cc
RUN pip3 install requests pysocks
WORKDIR ./cc
ENTRYPOINT ["python3", "cc.py"]
