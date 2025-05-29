# Usa la imagen oficial de Java 17 como base
FROM openjdk:21-jdk-slim

# Define una variable ARG para el jar
ARG JAR_FILE=target/*.jar

# Copia el jar al contenedor y renómbralo como app.jar
COPY target/api_deployment-0.0.1-SNAPSHOT.jar app.jar


# Expone el puerto 8080 (el puerto de tu API)
EXPOSE 8080

# Comando para ejecutar tu aplicación
ENTRYPOINT ["java","-jar","/app.jar"]
