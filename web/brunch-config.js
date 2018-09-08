
module.exports = {
  paths: {
    watched: ['src']
  },
  files: {
    stylesheets: {
      joinTo: {
        'index.css': 'src/scss/index.scss'
      }
    }
  },
  plugins: {
    sass: {
      options: {
        includePaths: ["node_modules/normalize-scss/sass/"],
      },
      mode: 'native'
    },
  },
  watcher: {
    awaitWriteFinish: true
  }
}