# Usa la imagen oficial de n8n que ya trae n8n instalado
FROM n8nio/n8n:latest

# Instala aws-sdk de manera global (opcional, si lo necesitas)
USER root
RUN npm install -g aws-sdk
USER node

# Permite a n8n usar aws-sdk en Function Nodes
ENV NODE_FUNCTION_ALLOW_EXTERNAL=aws-sdk

# (La imagen oficial ya expone el puerto 5678 y tiene un CMD ["tini", "--", "n8n"])
# Si quieres ser explícito:
CMD ["tini", "--", "n8n"]
