FROM registry.access.redhat.com/ubi9/python-39:1-117.1684741281

RUN groupadd -r pyuser && useradd -r -g pyuser pyuser

RUN mkdir -p /app-data && chown pyuser:pyuser /app-data

WORKDIR /app

COPY . .

VOLUME ["/app-data"]

CMD ["python", "script.py"]

