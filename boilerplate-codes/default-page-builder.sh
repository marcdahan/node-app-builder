#!/bin/sh
cat << _EOF_ >> $1/default.html
<!DOCTYPE html>
<html>
    <head>
        <title>$2</title>
        <link rel="apple-touch-icon" sizes="57x57" href="ui/img/favicon.ico/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="ui/img/favicon.ico/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="ui/img/favicon.ico/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="ui/img/favicon.ico/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="ui/img/favicon.ico/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="ui/img/favicon.ico/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="ui/img/favicon.ico/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="ui/img/favicon.ico/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="ui/img/favicon.ico/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="ui/img/favicon.ico/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="ui/img/favicon.ico/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="ui/img/favicon.ico/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="ui/img/favicon.ico/favicon-16x16.png">
        <link rel="manifest" href="ui/img/favicon.ico/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="ui/img/favicon.ico/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
        <link rel="stylesheet" src="ui/css/styles.css">
 	</head>
 	<body>
 		[Ready to work on $2 app]
 	</body>
 </html>
_EOF_

