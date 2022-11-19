echo const path = require("path");> webpack.config.js
echo const webpack = require("webpack");>> webpack.config.js
echo const { SourceMapDevToolPlugin } = require("webpack");  >> webpack.config.js
echo module.exports = {>> webpack.config.js
echo   entry: "./src/index.js",>> webpack.config.js
echo   output: {>> webpack.config.js
echo     path: path.resolve(__dirname, "./static/js"),>> webpack.config.js
echo     filename: "[name].min.js",>> webpack.config.js
echo     sourceMapFilename: "[name].js.map",>> webpack.config.js
echo   },>> webpack.config.js
echo   module: {>> webpack.config.js
echo     rules: [>> webpack.config.js
echo       {>> webpack.config.js
echo         test: /\.js$/,>> webpack.config.js
echo         enforce: "pre",>> webpack.config.js
echo         exclude: /node_modules/,>> webpack.config.js
echo         use: ["babel-loader"],>> webpack.config.js
echo       },>> webpack.config.js
echo       { test: /\.css$/, use: ["style-loader", "css-loader"] },>> webpack.config.js
echo       {>> webpack.config.js
echo         test: /\.scss$/i,>> webpack.config.js
echo         use: [>> webpack.config.js
echo           "style-loader",>> webpack.config.js
echo           "css-loader",>> webpack.config.js
echo           {>> webpack.config.js
echo             loader: "sass-loader",>> webpack.config.js
echo             options: { implementation: require("sass") },>> webpack.config.js
echo           },>> webpack.config.js
echo         ],>> webpack.config.js
echo       },>> webpack.config.js
echo     ],>> webpack.config.js
echo   },>> webpack.config.js
echo   optimization: {>> webpack.config.js
echo     minimize: true,>> webpack.config.js
echo   },>> webpack.config.js
echo   plugins: [>> webpack.config.js
echo     new webpack.DefinePlugin({>> webpack.config.js
echo       "process.env": {>> webpack.config.js
echo         // This has effect on the react lib size>> webpack.config.js
echo         NODE_ENV: JSON.stringify("production"),>> webpack.config.js
echo       },>> webpack.config.js
echo     }),>> webpack.config.js
echo     new SourceMapDevToolPlugin({>> webpack.config.js
echo       filename: "[file].map",>> webpack.config.js
echo     }),>> webpack.config.js
echo   ],>> webpack.config.js
echo   // resolve: {>> webpack.config.js
echo   //   alias: {>> webpack.config.js
echo   //     'react-dom$': 'react-dom/profiling',>> webpack.config.js
echo   //   }>> webpack.config.js
echo   // }>> webpack.config.js
echo };>> webpack.config.js