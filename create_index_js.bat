(
echo import React from "react";
echo import ReactDOM from "react-dom/client";
echo import App from "./components/App";
echo const root = ReactDOM.createRoot^(document.getElementById^("app"^)^);
echo root.render^(
echo   ^<React.StrictMode^>
echo       ^<App /^>
echo   ^</React.StrictMode^>
echo ^);
)>index.js 