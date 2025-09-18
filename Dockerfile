FROM node:18-alpine

WORKDIR /opt/app

# Copy package files
COPY strapi/package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy application files
COPY strapi/ .

# Create necessary directories and set proper ownership
RUN mkdir -p public/uploads && \
    mkdir -p src/admin && \
    mkdir -p src/extensions/documentation && \
    chown -R node:node /opt/app

# Switch to node user
USER node

EXPOSE 1337

CMD ["npm", "run", "develop"]