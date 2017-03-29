# ayo script
# boiler plate code

function ayo

  # setup variables
  echo 'What is the projects name?'
  read -p 'echo ""' project_name
  echo 'creating project '$project_name'...'
  sleep 0.2

  # make directories
  echo ' - creating directories...'
  mkdir styles
  mkdir scripts
  mkdir img
  mkdir includes
  mkdir svg
  sleep 0.2

  # create script files
  echo ' - creating scripts'
  cd scripts
  touch vendor.js
  touch script.js
  cd ..
  sleep 0.2

  # create style files
  echo ' - creating styles'
  cd styles
  touch vendor.css
  touch style.sass
  cd ..
  sleep 0.2

  # create markup files
  echo ' - creating markup'
  touch index.jade
  sleep 0.2

  # get gulpfile
  echo ' - downloading GulpFile.js'
  curl -O https://raw.githubusercontent.com/alachie/GulpFile/master/gulpfile.js
  sleep 0.2

  # create package.json
  echo ' - creating package.json...'
  echo '{
    "name": "'$project_name'",
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
  sleep 0.2

  # create bower.json
  echo ' - creating bower.json...'
  echo '{
    "name": "'$project_name'",
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
  sleep 0.2

  # setup and config npm
  echo ' - initialising node...'
  ln -s ~/.pack-sync/node_modules
  sleep 0.2

  # init GIT
  echo ' - initialising GIT...'
  git init
  echo '#'$project_name'
  ' > README.MD
  sleep 0.2

  # setup and config bower
  ln -s ~/.pack-sync/bower_components

  echo 'done.'
end