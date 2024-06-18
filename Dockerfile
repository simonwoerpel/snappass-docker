FROM python:3-slim

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y git
RUN apt-get autoremove -y
RUN apt-get clean 

RUN pip install -U pip setuptools
RUN pip install gunicorn

RUN pip install git+https://github.com/pinterest/snappass.git

USER 1000

CMD ["snappass"]
