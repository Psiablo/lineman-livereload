module.exports = (lineman) ->
  app = lineman.config.application

  files:
    imagemin:
      cwd: 'generated/img'
      dest: 'generated/img'
      src: '{,*/}*.{png,jpg,jpeg,gif}'

  config:
    server:
      liveReload:
        enabled: true
        port: 35729

    watch:
      options:
        livereload: 35729

      livereload:
        files: ["generated/{,*/}*.html", "generated/css/{,*/}*.css", "generated/img/{,*/}*.{png,jpg,jpeg,gif,webp,svg}"]
        tasks: false