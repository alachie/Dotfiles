# ayo script
# boiler plate code

function ayo
  echo 'creating project...'

  # make folders
  echo ' - creating directories...'
  mkdir styles
  mkdir scripts
  mkdir img
  mkdir includes
  mkdir svg

  # create package.json
  echo ' - creating package.json...'
  echo '{
    "name": "",
    "version": "1.0.0",
    "dependencies": {
      "gulp": "^3.9.0",
      "gulp-autoprefixer": "^2.3.1",
      "gulp-cache": "^0.2.10",
      "gulp-imagemin": "^2.3.0",
      "gulp-include": "^2.0.2",
      "gulp-jade": "^1.1.0",
      "gulp-plumber": "^1.0.1",
      "gulp-sass": "^2.0.4",
      "gulp-uglify": "^1.2.0",
      "gulp-watch": "^4.3.4"
    }
  }' > package.json

  # create bower.json
  echo ' - creating bower.json...'
  echo '{
    "name": "",
    "version": "1.0.0",
    "ignore": [
      "**/.*",
      "node_modules",
      "bower_components",
      "test",
      "tests"
    ],
    "dependencies": {
      "jquery": "~2.1.4",
      "normalize.css": "~3.0.3"
    }
  }' > bower.json

end