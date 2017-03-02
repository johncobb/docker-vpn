
# Build the docker file
docker build -t cpht/docker-vpn:dev .

# Run the docker image
docker run --privileged -it cpht/docker-vpn:dev
