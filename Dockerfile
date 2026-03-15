# Étape 1 : Build avec Maven
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
# On compile et on crée le JAR
RUN mvn clean package

# Étape 2 : Image finale légère
FROM openjdk:17.0.1-jdk-slim
WORKDIR /app
# On récupère le JAR généré à l'étape précédente
# Note : le nom du JAR dépend de l'artifactId dans ton pom.xml
COPY --from=build /app/target/mon-app-java-1.0-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]