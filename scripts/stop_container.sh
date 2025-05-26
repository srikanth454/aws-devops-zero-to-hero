
#!/bin/bash
set -e

# Find and stop the specific container by image name (optional)
containerid=$(docker ps --filter ancestor=matta639/simple-python-flask-app --format "{{.ID}}")

# If container exists, stop and remove it
if [ -n "$containerid" ]; then
    echo "Stopping and removing container $containerid"
    docker rm -f $containerid
else
    echo "No running container found for the specified image."
fi

