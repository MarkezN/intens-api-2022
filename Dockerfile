FROM openjdk:22-jdk-slim
WORKDIR /app
COPY . /app
RUN ./mvnw package -DskipTests
EXPOSE 8070
ENV PORT=8070
CMD ["java", "-jar", "target/praksa2022-0.0.1-SNAPSHOT.jar"]