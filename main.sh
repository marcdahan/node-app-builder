#!/bin/sh
echo "name of the folder:"
read foldersName
echo "version of the folder if not '0.0.1' "
read foldersVersion
if [ "$foldersVersion" = "" ] ; then 
    foldersVersion="0.0.1"
fi
echo "Name of the author?"
read authorName
if [ "$authorName" = "" ]; then
    authorName="Marc Dahan"
fi
echo "Add a description of your app here"
read folderDescription
echo "is jQuery is required  ? (y/n)"
read needjQuery
echo "Generate a folder for your $foldersName application"
mkdir $foldersName
sh boilerplate-codes/Readme-md-builder.sh "$PWD/$foldersName" $foldersName
cp boilerplate-codes/.jshintrc ./$foldersName
cp boilerplate-codes/gulpfile.js ./$foldersName
mkdir ./$foldersName/dist
mkdir ./$foldersName/dist/css
cp boilerplate-codes/default-dist.html ./$foldersName/dist/default.html
mkdir ./$foldersName/src
echo 
sh boilerplate-codes/default-page-builder.sh "$PWD/$foldersName" $foldersName
cp boilerplate-codes/server.js ./$foldersName/src
mkdir ./$foldersName/src/ext
mkdir ./$foldersName/src/js-local
mkdir ./$foldersName/src/lib
mkdir ./$foldersName/src/lib/js
if [ "$needjQuery" = "y" ] ; then
    mkdir ./$foldersName/src/lib/js/jquery
    cp boilerplate-codes/jquery.3.3.1.js ./$foldersName/src/lib/js/jquery
    cp boilerplate-codes/jquery.3.3.1.min.js ./$foldersName/src/lib/js/jquery
fi
mkdir ./$foldersName/src/ui/
mkdir ./$foldersName/src/ui/fonts
mkdir ./$foldersName/src/ui/img
cp -r boilerplate-codes/favicons ./$foldersName/src/ui/img/
mkdir ./$foldersName/src/ui/scss
cp boilerplate-codes/default.styles.scss ./$foldersName/src/ui/scss/default.styles.scss
cp boilerplate-codes/reset.scss ./$foldersName/src/ui/scss/reset.scss
mkdir ./$foldersName/src/views
mkdir ./$foldersName/.vscode
printf "files.encoding : utf8" > ./$foldersName/.vscode/settings.json
sh boilerplate-codes/package-json-builder.sh "$PWD/$foldersName" $foldersName $foldersVersion $folderDescription $authorName
mv $foldersName ..
##cd ../$foldersName
#echo npm now installing your dependancies
#call npm install
#(@echo .gitignore
#@echo node_modules) > .gitignore
echo --------------------------------
echo ----------- your application is running -----------
echo --------------------------------
#sh gulp
code ../$foldersName