* [English](README.md)
* [Русский](README-ru.md)


# Requirements
- Node.js
- Python

# How to run

- Run create_django_with_react.bat in terminal
- When the program prompts, enter the project's name.
- If you want to create an environment, enter 'Y' when prompted by the program.
- Wait
- If you want to delete bat files , enter 'Y'
- Emjoy =)

# What this script is doing

- Creates python venv and installs:
  - Djnago
  - djangorestframework
  - gunicorn
  - Pillow
  - Modules can be changed in download_python_modules.bat file

- Builds an Django app API and configures it to work with the rest framework.

- Creates a Django frontend app that:
    - Starts npm and downloads:
        - @babel/core, @babel/preset-env, @babel/preset-react, babel-loader 
        - react, react-dom, react-router-dom 
        - sass 
        - webpack, webpack-cli, source-map-loader 
        - css-loader, sass-loader, style-loader
        - Modules can be changed in npm_init.bat file
   
    - Creates webpack config and configurates it to compile:
        - react scss and css modules
        - react and js with babel compiler
        - outputs minified js
        - also creates .map files for js
  
    - Creates:
        - Simple Hello World React App
        - babel config and configurates it to compile react modules
        - basic style.scss
        - robots.txt
        - manifest.json
        - index.html with already loaded CSS and JS
- Configurates Django settings

# Bonus
You can use my small Python program normal_to_bat.py to convert any JS, JSON, or HTML (and possibly other files as well, I'm not sure, I didn't test =) ) to a bat file capable of creating the specified file.
It requires file name as parameter