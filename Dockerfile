# Usa la imagen oficial de n8n como base
FROM n8nio/n8n:latest

# Crea una carpeta para paquetes adicionales
RUN mkdir -p /home/node/.n8n/custom

WORKDIR /home/node/.n8n/custom

# Inicializa el proyecto de Node.js
RUN npm init -y

# Instala aws-sdk en esta carpeta
RUN npm install aws-sdk

# Establece la variable de entorno necesaria
ENV NODE_FUNCTION_ALLOW_EXTERNAL=aws-sdk

# Expone el puerto estándar de n8n
EXPOSE 5678
