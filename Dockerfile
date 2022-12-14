#from alpine:latest
FROM python:3 as python-base

#RUN apk add --no-cache py3-pip \
#    && pip3 install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["python3"]
CMD ["helloworld.py"]
