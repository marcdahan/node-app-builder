#!/bin/sh
cat << _EOF_ >> $1/package.json
{
    "name": "$2",
    "version": "$3",
    "description": "$4",
    "main": "src/server.js",
    "author": "$5",
    "license": "MIT",
    "devDependencies": {
            "body-parser": "1.19.0 ",
            "browser-sync": "2.26.14",
            "express": "4.17.1",
            "express-urlrewrite": "1.4.0",
            "fs": "0.0.1-security",
            "gulp": "4.0.2",
            "gulp-clean-css": "4.3.0",
            "gulp-concat": "2.6.1",
            "gulp-jshint": "2.1.0",
            "gulp-live-server": "0.0.31",
            "gulp-node-inspector": "0.2.1 ",
            "gulp-nodemon": "2.5.0",
            "gulp-rename": "2.0.0",
            "gulp-sass": "4.0.1",
            "gulp-shell": "0.8.0",
            "gulp-uglify": "3.0.2",
            "jquery": "3.3.1",
            "jsdom": "16.5.3",
            "jshint": "2.12.0",
            "node-sass": "5.0.0 ",
            "npm": "7.10.0"
        }
}
_EOF_