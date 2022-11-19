set /p Input=Project Name: 
echo %Input%
python -m venv myenv
call myenv\Scripts\activate.bat
call download_python_modules.bat
django-admin startproject %Input%
cd %Input%
python manage.py startapp api
python manage.py startapp frontend

cd frontend
call ..\..\npm_init.bat
call ..\..\create_webpack_js.bat
call ..\..\create_babel_json.bat

mkdir templates
cd templates
call ..\..\..\create_index_html.bat
cd ..

mkdir static
cd static
call ..\..\..\create_manifest_json.bat
call ..\..\..\create_robots_txt.bat

mkdir css
mkdir images
mkdir js
mkdir scss

cd scss
call ..\..\..\..\create_scss.bat
cd ..\..

mkdir src
cd src
call ..\..\..\create_index_js.bat
mkdir components
cd components
call ..\..\..\..\create_app_js.bat
cd ..\..

call npm run devonce
del admin.py
del models.py
del tests.py
del views.py
(
echo from django.urls import path
echo from .views import index
echo urlpatterns = [
echo    path^('',index^)
echo ]
)>urls.py
(
echo from django.shortcuts import render 
echo def index^(request^):
echo    return render^(request,'index.html'^)
)>views.py
cd ..
cd api
del views.py
(
echo from rest_framework.response import Response
)>views.py
(
echo from django.urls import path
echo urlpatterns = []
)>urls.py
cd ..
cd %Input%
del setting.py
call ..\..\create_settings_py.bat %Input%
del urls.py
(
echo from django.contrib import admin
echo from django.urls import path,include 
echo urlpatterns = [
echo     path^('admin/', admin.site.urls^),
echo     path^('',include^('frontend.urls'^)^),
echo     path^('api/',include^('api.urls'^)^)
echo ]   
)>urls.py
cd ..
python manage.py makemigrations
python manage.py migrate
