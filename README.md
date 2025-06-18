# FTBInfinity_Docker
Docker configuration for custom FTB Infinity Server

# Scratch Notes
Docker run command for testing:

docker run -it --rm -p 25565:25565 -v ./server_test:/home/minecraft/server ftbinfinityserver:latest /bin/sh -c /home/minecraft/server/ServerStart.sh