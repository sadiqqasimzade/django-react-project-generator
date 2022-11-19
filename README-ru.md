* [English](README.md)
* [Русский](README-ru.md)


# Требования
- Node.js
- Python

# Как запустить

- Запустите create_django_with_react.bat в терминале
- Когда программа предложит, введите имя проекта.
- Если вы хотите создать среду, введите «Y» при появлении запроса программы.
- Ждать
- радуйся =)

# Что делает этот скрипт

- Создает Python среду и устанавливает:
  - Django
  - djangorestframework
  - gunicorn
  - Pillow
  - Модули можно менять в файле download_python_modules.bat

- Создает Django приложение API и настраивает его для работы с rest framework.

- Создает Django приложение Frontend, которое:
    - Запускает npm и скачивает:
        - @babel/core, @babel/preset-env, @babel/preset-react, babel-loader
        - react, react-dom, react-router-dom
        - sass
        - webpack, webpack-cli, source-map-loader
        - css-loader, sass-loader, style-loader
        - Модули можно менять в файле npm_init.bat
   
    - Создает конфигурацию webpack и настраивает ее для компиляции:
        - React модулей scss и css
        - React и js с компилятором babel
        - выводит минимизированный js
        - также создает файлы .map для js
  
    - Создает:
        - Простое приложение Hello World на React
        - конфигурация babel и настраивает ее для компиляции React модулей
        - базовый style.scss
        - robots.txt
        - manifest.json
        - index.html с уже загруженными CSS и JS
- Конфигурирует настройки Джанго

# Бонус
Вы можете использовать мою небольшую программу Python normal_to_bat.py для преобразования любого JS, JSON или HTML (и, возможно, других файлов, я не уверен, я не проверял =) ) в bat-файл, способный создать указанный файл.
Требуется имя файла в качестве параметра