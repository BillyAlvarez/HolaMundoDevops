# Usar una imagen base de Java
FROM openjdk:21-jdk-slim

# Copiar el archivo JAR de la aplicación
COPY target/*.jar app.jar

# Exponer el puerto que usa la aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]