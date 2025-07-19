

#this is how i have update and install Docker
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Run hello-world
docker run hello-world

# Run Ubuntu container with echo there was no image stored locally so they get it from dockerhub
docker run ubuntu echo "Hello from Tushar"

#Listing all images and containers
docker images
docker ps -a
