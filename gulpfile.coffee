gulp     = require 'gulp'
coffee   = require 'gulp-coffee'
plumber  = require 'gulp-plumber'
stylus   = require 'gulp-stylus'
watchify = require 'gulp-watchify'
rename   = require 'gulp-rename'
#uglify   = require 'gulp-uglify'

watching = off

gulp.task 'enable-watch-mode', -> watching = on

gulp.task 'build:coffee', watchify (watchify) ->
  gulp.src './src/main.coffee'
    .pipe plumber()
    .pipe watchify
      watch     : watching
      extensions: ['.coffee', '.js']
      transform : ['coffeeify']
    .pipe rename
      extname: ".js"
    .pipe gulp.dest './dist'

gulp.task 'build:stylus', ->
  gulp.src './styl/*.styl'
    .pipe plumber()
    .pipe stylus
      compress: true
    .pipe gulp.dest './stylesheets'

gulp.task 'watch', ['enable-watch-mode', 'build:coffee'], ->
  gulp.watch ['./styl/*.styl'], ['build:stylus']
