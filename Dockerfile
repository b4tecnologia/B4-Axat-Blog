# Usar imagem oficial do Node.js
FROM node:18-alpine

# Definir diretório de trabalho
WORKDIR /opt/app

# Copiar arquivos de dependências
COPY strapi/package*.json ./

# Instalar todas as dependências (incluindo dev)
RUN npm install && npm cache clean --force

# Copiar código da aplicação (isso já inclui tudo dentro de strapi/)
COPY strapi/ .

# Criar diretório para uploads
RUN mkdir -p public/uploads

# Garantir que o diretório admin existe e tem as permissões corretas
RUN mkdir -p src/admin && chown -R node:node /opt/app

# Mudar para o usuário node para segurança
USER node

# Expor porta padrão do Strapi
EXPOSE 1337

# Rodar em modo desenvolvimento
CMD ["npm", "run", "develop"]