# Usar a imagem oficial do Node.js
FROM node:18-alpine

# Definir diretório de trabalho
WORKDIR /opt/app

# Copiar arquivos de dependências
COPY strapi/package*.json ./

# Instalar todas as dependências (incluindo dev)
RUN npm install && npm cache clean --force

# Copiar código da aplicação
COPY strapi/ .

# Criar diretório para uploads
RUN mkdir -p public/uploads

# Build do admin panel com NODE_ENV=production
RUN NODE_ENV=production npm run build

# Corrigir caminho do admin copiando arquivos para o local esperado
RUN mkdir -p /opt/app/node_modules/@strapi/admin/dist/server/server/build && \
    cp -r /opt/app/build/* /opt/app/node_modules/@strapi/admin/dist/server/server/build/

# Remover dependências de desenvolvimento
RUN npm prune --omit=dev

# Expor porta
EXPOSE 1337

# Comando para iniciar a aplicação
CMD ["npm", "start"]