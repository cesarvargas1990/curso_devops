# Usa una imagen base con JRE 17 en Alpine
FROM adoptopenjdk:17-jre-hotspot-alpine3.14

# Agrega un grupo 'devopsc'
RUN addgroup devopsc

# Agrega un usuario 'admin' y lo asigna al grupo 'devopsc'
RUN adduser -D -G devopsc admin

# Copia el archivo JAR
COPY mi_aplicacion.jar /app/mi_aplicacion.jar

# Cambia al usuario 'admin'
USER admin

# Comando por defecto al ejecutar el contenedor
CMD ["java", "-jar", "/app/mi_aplicacion.jar"]





