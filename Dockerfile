FROM python:3.11-slim-bullseye

RUN groupadd -r pyuser && useradd -r -g pyuser pyuser

RUN mkdir -p /app-data && chown pyuser:pyuser /app-data

WORKDIR /app

COPY . .

VOLUME ["/app-data"]

CMD ["python", "script.py"]

