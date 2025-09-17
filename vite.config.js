import { defineConfig } from 'vite'

export default defineConfig({
  server: {
    allowedHosts: [
      'blog.axat.com.br',
      'localhost',
      '127.0.0.1'
    ],
    host: '0.0.0.0', // Allow external connections
    port: 1337
  }
})