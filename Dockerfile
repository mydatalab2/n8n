# Dockerfile para desplegar n8n en Render

# 1. Partimos de la imagen oficial de n8n
FROM n8nio/n8n:latest

# 2. Cambiamos a usuario root para instalar dependencias adicionales
USER root
RUN npm install aws-sdk

# 3. Volvemos al usuario node por seguridad
USER node

# 4. Exponemos el puerto 5678 (puerto por defecto de n8n)
EXPOSE 5678

# 5. Definimos el comando de inicio
CMD ["n8n"]
