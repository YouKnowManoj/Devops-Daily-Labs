FROM python:3.9-slim

WORKDIR /app

COPY app.py .

RUN mkdir /logs

EXPOSE 8080

CMD ["python", "app.py"]