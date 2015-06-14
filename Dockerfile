FROM dockerfile/java:oracle-java8
ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.8.7/minecraft_server.1.8.7.jar /minecraft.jar
RUN chown 1:1 /minecraft.jar && mkdir /minecraft && chown 1:1 /minecraft
EXPOSE 25565
WORKDIR /minecraft
USER 1
ENTRYPOINT ["java"]
CMD ["-Xmx4096M", "-Xms1024M", "-XX:+UseG1GC", "-jar", "/minecraft.jar", "nogui"]
