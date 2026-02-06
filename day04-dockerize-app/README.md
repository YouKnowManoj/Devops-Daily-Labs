# Day 04 – Dockerize a Simple App

Using docker because, A Dockerized Python web app that runs consistently across systems.

What i have put in this repo?
    Created a simple Python HTTP server
    Wrote a simple Dockerfile
    Built and ran a Docker Image with port mapping(8080:8080)

Steps to run:

Clone this repo first! 
- Prerequisites: python3 and Docker

Run this command to build the docker Image
    docker build -t simple-docker-app .

Run the bellow command to contanarize the docker image / app
    docker run -d -p 8080:8080 simple-docker-app:latest