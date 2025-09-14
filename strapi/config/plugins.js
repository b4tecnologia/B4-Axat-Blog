// path: ./config/plugins.js

module.exports = ({ env }) => ({
  'users-permissions': {
    config: {
      jwtSecret: env('JWT_SECRET', '4bfa8fbeb743058eadb24f1ab3160cda'),
    },
  },
});
