FROM python:3.11-rc-alpine

RUN mkdir /app
WORKDIR /app

COPY requirements.in ./

RUN pip install pip-tools
RUN pip-compile ./requirements.in
RUN pip install -r requirements.txt

COPY execute template.md ./

CMD ["python", "./execute"]
