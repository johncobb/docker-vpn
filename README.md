# Reference: https://www.tunnelsup.com/vpn-tunnel-between-an-ubuntu-linux-machine-and-a-cisco-asa-firewall/

# Build the docker file
docker build -t cpht/docker-vpn:dev .

# Run the docker image
docker run --privileged -it cpht/docker-vpn:dev
