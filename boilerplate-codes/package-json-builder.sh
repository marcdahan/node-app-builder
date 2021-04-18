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
            "body-parser": "1.18.3",
            "browser-sync": "2.24.6",
            "express": "4.16.3",
            "express-urlrewrite": "1.2.0",
            "fs": "0.0.1-security",
            "gulp": "3.9.1",
            "gulp-clean-css": "3.10.0",
            "gulp-concat": "2.6.1",
            "gulp-jshint": "2.1.0",
            "gulp-live-server": "0.0.31",
            "gulp-rename": "1.4.0",
            "gulp-sass": "4.0.1",
            "gulp-shell": "0.6.5",
            "gulp-uglify": "3.0.1",
            "jquery": "3.3.1",
            "jsdom": "11.12.0",
            "jshint": "2.9.6",
            "npm": "6.4.0",
            "gulp-node-inspector": "0.2.1",
            "gulp-nodemon": "2.2.1"
        }
}
_EOF_