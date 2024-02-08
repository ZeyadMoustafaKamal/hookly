FROM python:3.11-alpine

WORKDIR /hookly

COPY ./requirements-dev.txt /hookly/requirements-dev.txt


RUN pip install --no-cache-dir --upgrade pip && pip install -r requirements-dev.txt

COPY . /hookly

RUN chmod +x entrypoint.sh

ENTRYPOINT ./entrypoint.sh


