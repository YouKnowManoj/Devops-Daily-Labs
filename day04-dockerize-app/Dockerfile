FROM python:3.9-slim

WORKDIR /app

COPY app.py .

EXPOSE 8080

CMD ["python", "app.py"]

#this can be upgraded to  distroless image for better security and performance, but for simplicity we are using python:3.9-slim as the base image.