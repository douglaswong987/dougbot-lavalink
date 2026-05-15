FROM eclipse-temurin:17-jre-jammy

WORKDIR /opt/Lavalink

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

# bust cache
RUN echo "rebuild-v2"

RUN wget -q -O Lavalink.jar \
    https://github.com/lavalink-devs/Lavalink/releases/download/4.2.2/Lavalink.jar

COPY application.yml application.yml

EXPOSE 2333

ENTRYPOINT ["java", "-jar", "Lavalink.jar"]