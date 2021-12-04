sudo docker ps -a -q --filter "name=gateway" | grep -q . && docker stop gateway && docker rm gateway | true
sudo docker rmi 0826hihi/up3-gateway-test:latest
sudo docker pull 0826hihi/up3-gateway-test:latest
docker run -d -p 9000:9000 --name gateway --hostname gateway-service 0826hihi/up3-gateway-test:latest
docker rmi -f $(docker images -f "dangling=true" -q) || true
