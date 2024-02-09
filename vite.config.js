import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import image from '@rollup/plugin-image'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [

    react(),
    // https://vite-rollup-plugins.patak.dev/#image
    // https://vitejs.dev/guide/api-plugin.html#plugin-ordering
    {
      ...image(),
      enforce: 'pre'
    },

  ],
  // https://vitejs.dev/guide/backend-integration.html
  build: {
    manifest: true, 
    rollupOptions: {
      input: {
        counter: 'src/main/webapp/app-counter/main.jsx', 
      },
      output: {
        // This will generate a `dist` directory containing bundles
        dir: 'dist/',
        entryFileNames: '[name]-bundle.js',
        assetFileNames: '[name]-bundle[extname]',

      }
    },
  },
})