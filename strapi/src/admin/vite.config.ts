import { defineConfig, mergeConfig } from 'vite';

export default (config) => {
  return mergeConfig(config, defineConfig({
    resolve: {
      alias: {
        '@': '/src',
      },
    },
    server: {
      allowedHosts: 'blog.axat.com.br'
    }
  }));
};