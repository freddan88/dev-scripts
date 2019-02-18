#!/bin/bash
#
# Version 1.1.1
#
## Do not edit below this line!!!
##################################

case $1 in

rollup)

rollup_restart () {
  $0 rollup
}

echo " "
  read -p "Enter project name (Max 15 characters): " name

  if [[ -z $name ]]; then
    rollup_restart
    exit
  fi

  path=$(pwd)

  echo " "
  echo "Your project will be created at:"
  echo $path/$(echo $name | cut -c -15)
  echo " "

  read -p "Do you accept yes/no (y/n): " answear

  if [[ "$answear" != "y" ]]; then
    rollup_restart
    exit
  fi

  if [[ -d $path/$name ]]; then
    echo " "
    echo -e "\033[0;31mThe specified directory already exists\033[0m"
    rollup_restart
  fi

  mkdir $path/$name
  scriptdir=$(dirname $0)
  cp -R $scriptdir/template/* $path/$name
  cd $path/$name

  echo " "
  git init
  npm init -y >/dev/null

  npm i autoprefixer browserslist cssnano node-sass postcss-normalize stylelint stylelint-{config-standard,scss} rollup rollup-{plugin-babel,plugin-browsersync,plugin-commonjs,plugin-filesize,plugin-node-resolve,plugin-postcss,plugin-terser} @babel/{core,preset-env}

  # debs=$(cat package.json | grep -iA 1000 dependencies)
  dependencies=$(cat package.json | awk '/dependencies/,0')
  # echo $dependencies >> package-part.json && rm package.json
  echo $dependencies | tr , '\n' | sed 's/$/,/' | sed '$s/,//' >> package-part.json
  rm package.json && mv package-part.json package.json

  npm run help | tail -n +4
;;

gitrepo)
echo " "
  echo "Feature not implemented yet!"
;;

help)
echo " "
  echo "npm_rollup - Install npm-modules (rollup) and initialize a new local git-repository for your project"
;;

*)
echo " "
	echo "Argumets: rollup | gitrepo | help"
echo " "
;;

esac
exit