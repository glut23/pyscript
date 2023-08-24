FROM python:3-alpine

RUN mkdir -p /app-data

WORKDIR /app

COPY . .

VOLUME ["/app-data"]

CMD ["python", "script.py"]

