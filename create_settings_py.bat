(
echo from pathlib import Path
echo BASE_DIR = Path^(__file__^).resolve^(^).parent.parent
echo SECRET_KEY = '.'
echo DEBUG = True
echo ALLOWED_HOSTS = []
echo INSTALLED_APPS = [
echo     'django.contrib.admin',
echo     'django.contrib.auth',
echo     'django.contrib.contenttypes',
echo     'django.contrib.sessions',
echo     'django.contrib.messages',
echo     'django.contrib.staticfiles',
echo     'api',
echo     'frontend']
echo MIDDLEWARE = [
echo     'django.middleware.security.SecurityMiddleware',
echo     'django.contrib.sessions.middleware.SessionMiddleware',
echo     'django.middleware.common.CommonMiddleware',
echo     'django.middleware.csrf.CsrfViewMiddleware',
echo     'django.contrib.auth.middleware.AuthenticationMiddleware',
echo     'django.contrib.messages.middleware.MessageMiddleware',
echo     'django.middleware.clickjacking.XFrameOptionsMiddleware', ]
echo ROOT_URLCONF = '%1.urls'
echo WSGI_APPLICATION = '%1.wsgi.application'
echo TEMPLATES = [
echo     {
echo         'BACKEND': 'django.template.backends.django.DjangoTemplates',
echo         'DIRS': [],
echo         'APP_DIRS': True,
echo         'OPTIONS': {
echo             'context_processors': [
echo                 'django.template.context_processors.debug',
echo                 'django.template.context_processors.request',
echo                 'django.contrib.auth.context_processors.auth',
echo                 'django.contrib.messages.context_processors.messages',
echo             ],
echo         },
echo     },
echo ]
echo DATABASES = {
echo     'default': {
echo         'ENGINE': 'django.db.backends.sqlite3',
echo         'NAME': BASE_DIR / 'db.sqlite3',
echo     }
echo }
echo AUTH_PASSWORD_VALIDATORS = [
echo     {
echo         'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
echo     },
echo     {
echo         'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
echo     },
echo     {
echo         'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
echo     },
echo     {
echo         'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
echo     },
echo ]
echo LANGUAGE_CODE = 'en-us'
echo TIME_ZONE = 'UTC'
echo USE_I18N = True
echo USE_TZ = True
echo STATIC_URL = 'static/'
echo DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
)>settings.py