import { svelte } from '@sveltejs/vite-plugin-svelte'
import { defineConfig } from 'vite'
import RubyPlugin from 'vite-plugin-ruby'
import FullReload from 'vite-plugin-full-reload'

export default defineConfig({
  plugins: [
    RubyPlugin(),
    svelte(),
    FullReload(['app/frontend/**/*', 'app/views/**/*', 'app/assets/stylesheets/**/*'], { delay: 100 })
  ],
})