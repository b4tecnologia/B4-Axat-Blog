# Usar imagem oficial do Node.js
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

# Expor porta padrão do Strapi
EXPOSE 1337

# Rodar em modo desenvolvimento
CMD ["npm", "run", "develop"]