FROM registry.access.redhat.com/ubi9/python-39:1-117.1684741281

RUN mkdir -p /app-data

WORKDIR /app

COPY . .

VOLUME ["/app-data"]

CMD ["python", "script.py"]

