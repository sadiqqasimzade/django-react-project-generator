(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo   ^<head^>
echo     ^<meta charset="UTF-8" /^>
echo     ^<meta http-equiv="X-UA-Compatible" content="IE=edge" /^>
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0" /^>
echo     ^<meta name="description" content="_"^>
echo     ^<title^>_^</title^>
echo     {%%load static%%}
echo     ^<link rel="manifest" href="{%% static "manifest.json" %%}"^>
echo     ^<link rel="stylesheet" type="text/css" href="{%% static "css/style.min.css" %%}"
echo     ^<link rel="apple-touch-icon" sizes="180x180" href="{%%static "images/favicon/apple-touch-icon.png"%%}"^>
echo     ^<link rel="icon" type="image/png" sizes="32x32" href="{%%static "images/favicon/favicon-32x32.png"%%}"^>
echo     ^<link rel="icon" type="image/png" sizes="16x16" href="{%%static "images/favicon/favicon-16x16.png"%%}"^>
echo   ^</head^>
echo   ^<body^>
echo     ^<div id="app"^>^</div^>
echo     ^<script src="{%% static "js/main.min.js" %%}"^>^</script^>
echo   ^</body^>
echo ^</html^>
)>index.html