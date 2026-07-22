import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://smae1993.github.io',
  output: 'static',
  compressHTML: true,
  build: {
    format: 'directory',
  },
});
