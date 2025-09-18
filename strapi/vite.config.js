import { defineConfig } from 'vite'

export default defineConfig({
  server: {
    allowedHosts: [
      'blog.axat.com.br'
    ],
    host: 'blog.axat.com.br', // Allow external connections
    port: 1337
  }
})