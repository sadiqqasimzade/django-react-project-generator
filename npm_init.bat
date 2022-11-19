call npm init -y
call npm i @babel/core @babel/preset-env @babel/preset-react babel-loader react react-dom react-router-dom sass webpack webpack-cli source-map-loader css-loader sass-loader style-loader --save-dev
call npm pkg set scripts.dev="webpack --mode development --watch"
call npm pkg set scripts.devonce="webpack --mode development"
call npm pkg set scripts.build="webpack --mode production"
call npm pkg set scripts.sass="sass -w ./static/scss/style.scss ./static/css/style.min.css --style=compressed"