FROM python:3.9.10-slim

RUN mkdir /app

COPY requirements.txt /app

RUN pip3 install --upgrade pip

RUN pip3 install -r /app/requirements.txt --use-pep517 --no-cache-dir

COPY ./../ /app

WORKDIR /app

ENTRYPOINT [ "/app/docker-entrypoint.sh" ]
