(
echo {
echo "presets": [
echo  [
echo      "@babel/preset-env",
echo      {
echo        "targets": {
echo          "node": "10"
echo        }
echo      }
echo    ],
echo    "@babel/preset-react"
echo  ],
echo  "plugins": ["@babel/plugin-proposal-class-properties"]
echo }
)> babel.config.json