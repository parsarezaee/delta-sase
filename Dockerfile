FROM python:3.10

ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /delta_src
COPY ./delta_src /delta_src
WORKDIR /delta_src

COPY /delta_src/requirements.txt /delta_src/requirements.txt

RUN pip install -r requirements.txt