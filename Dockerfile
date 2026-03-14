# --- ÉTAPE 1 : La Compilation (Build) ---
FROM openjdk:17-ea-jdk-alpine AS builder
WORKDIR /build
# On copie le code source
COPY Hello.java .
COPY manifest.txt .
# On compile à l'intérieur de Docker
RUN javac Hello.java && jar cvfm app.jar manifest.txt Hello.class

# --- ÉTAPE 2 : L'Exécution (Runtime) ---
# On repart d'une image minuscule (JRE uniquement)
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
# On ne récupère que le JAR de l'étape précédente
COPY --from=builder /build/app.jar .
ENTRYPOINT ["java", "-jar", "app.jar"]