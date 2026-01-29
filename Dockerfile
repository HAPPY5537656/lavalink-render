FROM eclipse-temurin:17-jre

WORKDIR /app

# حمّل Lavalink.jar مباشرة من GitHub Releases (اختر إصدار)
ARG LAVALINK_VERSION=4.0.8
ADD https://github.com/lavalink-devs/Lavalink/releases/download/${LAVALINK_VERSION}/Lavalink.jar /app/Lavalink.jar

COPY application.yml /app/application.yml

EXPOSE 2333

CMD ["java", "-jar", "/app/Lavalink.jar"]
