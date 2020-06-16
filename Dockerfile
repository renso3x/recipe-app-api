FROM python:3.7-alpine

# SETUP THE ENVIRONMENT VARIABLE
ENV PYTHONUNBUFFERED 1

# INSTALL DEPENDENCIES
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user