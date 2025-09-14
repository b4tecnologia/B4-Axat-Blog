module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  app: {
<<<<<<< Updated upstream
    keys: env.array('APP_KEYS'),
=======
    keys: [env('APP_KEYS')],
>>>>>>> Stashed changes
  },
  webhooks: {
    populateRelations: env.bool('WEBHOOKS_POPULATE_RELATIONS', false),
  },
});
