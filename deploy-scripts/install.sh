
#!/bin/bash
set -e

cd /home/ubuntu/app

docker stop web-container || true
docker rm web-container || true

docker build -t sample-website .
docker run -d -p 80:80 --name web-container sample-website
