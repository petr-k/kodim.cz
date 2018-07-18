
module.exports = {
  files: {
    javascripts: {
      joinTo: {
        'index.js': /^app/
      }
    },
    stylesheets: {joinTo: 'index.css'}
  },
  plugins: {
    sass: {
      options: {
        includePaths: ["node_modules/normalize-scss/sass/"],
      },
      mode: 'native'
    },
    babel: {
      presets: ['env']
    }
  },
  server: {
    port: 3000,
    base: './public',
    stripSlashes: true
  }
}