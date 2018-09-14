@echo off
set /p nameFolder="name of the folder:"
set /p version="version of the folder if not '0.0.1' "
IF "%version%"=="" (SET version="0.0.1")
set /p author="author is marc dahan? Enter/N ?"
IF "%author%"==" " (SET author="marc dahan")
set /p description="Description of your app ? :"
echo Generate folder as brother folder of this present parent folder ...
md %nameFolder%
echo " " > %nameFolder%\README.md
copy /v boilerplate-codes\.jshintrc .\%nameFolder%
copy /v boilerplate-codes\gulpfile.js .\%nameFolder%
md %nameFolder%\dist
md %nameFolder%\dist\css
copy /v boilerplate-codes\default-dist.html .\%nameFolder%\dist\default.html
md %nameFolder%\src
call C:\Users\mdahan\lab\node-app-builder\default-page-builder.bat %nameFolder%
copy /v boilerplate-codes\server.js .\%nameFolder%\src
md %nameFolder%\src\ext
md %nameFolder%\src\js-local
md %nameFolder%\src\lib
md %nameFolder%\src\lib\js
md %nameFolder%\src\lib\js\jquery
copy /v boilerplate-codes\jquery.3.3.1.js .\%nameFolder%\src\lib\js\jquery
copy /v boilerplate-codes\jquery.3.3.1.min.js .\%nameFolder%\src\lib\js\jquery
md %nameFolder%\src\ui\
md %nameFolder%\src\ui\fonts
md %nameFolder%\src\ui\img
md %nameFolder%\src\ui\img\favicon.ico
copy /v boilerplate-codes\favicon.ico .\%nameFolder%\src\ui\img\favicon.ico
md %nameFolder%\src\ui\scss
copy /v boilerplate-codes\default.styles.scss .\%nameFolder%\src\ui\scss
copy /v boilerplate-codes\reset.scss .\%nameFolder%\src\ui\scss
md %nameFolder%\src\views
(@echo {
@echo   "name": "%nameFolder%",
@echo   "version": %version%,
@echo   "description": "%description%",
@echo   "main": "src/server.js",
@echo	"author": "%author%",
@echo	"license": "ISC",
@echo	"devDependencies": {
@echo   	"body-parser": "^1.18.3",
@echo   	"browser-sync": "^2.24.6",
@echo   	"express": "^4.16.3",
@echo   	"express-urlrewrite": "^1.2.0",
@echo   	"fs": "0.0.1-security",
@echo   	"gulp": "^3.9.1",
@echo   	"gulp-clean-css": "^3.10.0",
@echo   	"gulp-concat": "^2.6.1",
@echo   	"gulp-jshint": "^2.1.0",
@echo   	"gulp-live-server": "0.0.31",
@echo   	"gulp-rename": "^1.4.0",
@echo   	"gulp-sass": "^4.0.1",
@echo   	"gulp-shell": "^0.6.5",
@echo   	"gulp-uglify": "^3.0.1",
@echo   	"jquery": "^3.3.1",
@echo   	"jsdom": "^11.12.0",
@echo   	"jshint": "^2.9.6",
@echo   	"npm": "^6.4.0",
@echo		"gulp-node-inspector": "^0.2.1",
@echo		"gulp-nodemon": "^2.2.1"
@echo   }
@echo }
)>%nameFolder%\"package.json"
move %nameFolder% ../
cd ..\%nameFolder%
echo npm now installing your dependancies
call npm install
(@echo .gitignore
@echo node_modules) > .gitignore
mkdir .vscode
(@echo {
@echo       "files.encoding": "utf8"
@echo }) > .vscode/settings.json
call code .
echo --------------------------------
echo ----------- JOB DONE -----------
echo --------------------------------
call gulp
