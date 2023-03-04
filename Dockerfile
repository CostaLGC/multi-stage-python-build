FROM python:3.8-slim-buster AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --trusted-host pypi.python.org -r requirements.txt

FROM python:3.8-slim-buster
WORKDIR /app
COPY --from=builder /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages
COPY . /app
ENV NAME World
EXPOSE 80
CMD ["python", "app.py"]
