# Usa la imagen oficial de n8n
FROM n8nio/n8n:latest

# Cambia a usuario root para instalar dependencias adicionales
USER root

# Instala aws-sdk
RUN npm install aws-sdk

# Vuelve al usuario node (recomendado para seguridad)
USER node

# Comando por defecto
CMD ["n8n"]
