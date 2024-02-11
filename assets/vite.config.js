import {defineConfig} from 'vite'
import copy from 'rollup-plugin-copy'

const outDir = '../modx/assets/app'

export default defineConfig({
    server: {
        host: '0.0.0.0',
        port: '9090',
    },
    base: '/assets/app/',
    build: {
        manifest: true,
        emptyOutDir: true,
        outDir,
        rollupOptions: {input: './src/index.js'},
    },
    plugins: [
        copy({
            hook: 'closeBundle',
            copyOnce: true,
            targets: [{
                src: 'src/images/*',
                dest: outDir + '/images',
            }],
        }),
    ]
})