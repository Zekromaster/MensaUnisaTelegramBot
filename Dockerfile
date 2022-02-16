FROM python:3.11.0a5-alpine

RUN mkdir /app
WORKDIR /app

COPY requirements.in ./
COPY execute template.md ./

RUN pip install pip-tools
RUN pip-compile ./requirements.in
RUN pip install -r requirements.txt

CMD ["python", "./execute"]
