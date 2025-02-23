FROM n8nio/n8n:latest

USER root
# Instala el SDK que necesites (versión v3 de AWS SDK)
RUN npm install @aws-sdk/client-s3 @aws-sdk/s3-request-presigner

USER node
EXPOSE 5678
CMD ["n8n"]
