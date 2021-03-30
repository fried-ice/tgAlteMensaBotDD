FROM python:alpine

RUN ["apk", "add", "gcc", "musl-dev", "libffi-dev", "openssl-dev", "libxml2-dev", "libxslt-dev", "rust", "cargo"]

WORKDIR /app
COPY requirements.txt .
RUN ["pip", "install", "-r", "/app/requirements.txt" ]

COPY src .
CMD ["python3", "/app/main.py"]
