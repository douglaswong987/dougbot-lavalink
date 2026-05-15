FROM eclipse-temurin:17-jre-alpine

WORKDIR /opt/Lavalink

RUN wget -q -O Lavalink.jar \
    https://github.com/lavalink-devs/Lavalink/releases/download/4.2.2/Lavalink.jar

COPY application.yml application.yml

EXPOSE 2333

ENTRYPOINT ["java", "-jar", "Lavalink.jar"]