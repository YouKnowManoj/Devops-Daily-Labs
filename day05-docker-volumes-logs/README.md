# Day 05 – Docker Volumes & Logs

Used Docker volumes to persist application logs outside the container lifecycle.

Modified the app to write logs to a file
Mounted a host directory as a Docker volume
Volumes help persist data
Logs should live outside containers

Run this command to build the docker Image
    docker build -t docker-logs-app .

Run the bellow command to contanarize the docker image / app
    docker run -d -p 8880:8080 -v $(pwd)/logs:/logs --name day-logs-app docker-logs-app:latest