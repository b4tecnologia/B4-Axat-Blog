module.exports = ({ env }) => ({
  auth: {
    secret: env("ADMIN_JWT_SECRET", 'o4HZmZd8WCdYlxZ6IJS8YA=='),
  },
  locales: ["pt-BR"],
  apiToken: {
    salt: env("API_TOKEN_SALT"),
  },
  transfer: {
    token: {
      salt: env("TRANSFER_TOKEN_SALT"),
    },
  },
  secrets: {
    encryptionKey: env("ENCRYPTION_KEY"),
  },
  flags: {
    nps: env.bool("FLAG_NPS", true),
    promoteEE: env.bool("FLAG_PROMOTE_EE", true),
  },
  serveAdminPanel: env.bool("SERVE_ADMIN", true),
  build: {
    backend: env("STRAPI_ADMIN_BACKEND_URL", "http://localhost:1337"),
  },
});