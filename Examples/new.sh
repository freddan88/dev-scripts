#!/bin/bash
#
# Version 1.0.0
#
## Do not edit bellow this line!!!
##################################
case $1 in

npmbuild)
echo " "
  read -p "Enter project name (Max 15 characters): " name
  path=$(pwd)
  
  if [[ -z $name ]]; then
    $0 npmbuild
    exit
  fi
  
  echo " "
  echo "Your project will be created at:"
  echo $path/$(echo $name | cut -c -15)
  echo " "
  
  read -p "Do you accept yes/no (y/n): " answear
  
  if [ $answear != y ]; then 
    $0 npmbuild
    exit
  fi
  
  mkdir $path/$name
  cd $path/$name
  
  git init
  npm init
  npm install rollup rollup-plugin-browsersync rollup-plugin-postcss node-sass postcss-normalize browserslist autoprefixer cssnano stylelint stylelint-config-standard
;;

help)
echo " "
  echo "postcss - This argument will ask you for a project name and initialize, install and configure npm-modules"
;;

*)
echo " "
	echo "Argumets: npmbuild | gitrepo | help"
echo " "
;;

esac
exit