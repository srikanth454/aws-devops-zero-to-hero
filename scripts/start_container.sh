#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull matta639/simple-python-flask-app

# Run the Docker image as a container
docker run -d -p 6000:6000 matta639/simple-python-flask-app
