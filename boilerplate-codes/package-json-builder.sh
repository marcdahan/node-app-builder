#!/bin/sh
cat << _EOF_ >> $1/package.json
{
    "name": "$2",
    "version": "$3",
    "description": "$4",
    "main": "src/server.js",
    "author": "$5",
    "keywords": [],
    "license": "MIT",
    "devDependencies": {
        "body-parser": "1.19.0",
        "express": "4.17.1",
        "browser-sync": "^2.26.13",
        "cssnano": "^4.1.10",
        "gulp": "^4.0.2",
        "gulp-nodemon": "^2.5.0",
        "gulp-postcss": "^9.0.0",
        "gulp-sass": "^4.1.0",
        "gulp-terser": "^1.4.0",
        "postcss": "^8.1.2"
        }
}
_EOF_
