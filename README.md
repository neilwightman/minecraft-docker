Minecraft Docker
================

This image is currently based on oracle java 1.8 image and runs Minecraft 1.8.1

To run I use : 

    cd minecraft-docker
    docker build -t neilwightman/minecraft181
    docker run --name minecraft181 -v /home/mcuser/minecraft/server:/minecraft -d -p 25565:25565 neilwightman/minecraft181
