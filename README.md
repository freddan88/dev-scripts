# Dev-scripts
Scripts to help web developers speed up their work

## macOS

_Download_

```bash
wget
```

#### Script: new.sh:

#### Dependencies:

* [Node.js with npm](https://nodejs.org/en/download/package-manager/)
* [Google Chrome](https://www.google.com/chrome/) or [Mozilla Firefox](https://www.mozilla.org/en-US/)

<details>
  <summary>Packages and modules:</summary>
  <li><a href="https://github.com/rollup/rollup#readme">Rollup</a></li>
  <br/>
  [rollup-plugin-browsersync](https://github.com/4lejandrito/rollup-plugin-browsersync#readme)
  <br/>
  [rollup-plugin-postcss](https://github.com/egoist/rollup-plugin-postcss#readme)
  <br/>
  [node-sass](https://github.com/sass/node-sass#readme)
  <br/>
  [postcss-normalize](https://github.com/csstools/postcss-normalize#readme)
  <br/>
  [Browserslist](https://github.com/browserslist/browserslist#readme)
  <br/>
  [Autoprefixer](https://github.com/postcss/autoprefixer#readme)
  <br/>
  [cssnano](https://cssnano.co/)
  <br/>
  [stylelint CLI](https://github.com/stylelint/stylelint/blob/master/docs/user-guide/cli.md)
  <br/>
  [stylelint-config-standard](https://github.com/stylelint/stylelint-config-standard)
</details>

## Windows

_Download_

```
Link:
```

#### Dependencies:

A webserver with php eg XAMP, MAMP or WAMP

Links:
* XAMPP
* MAMP
* WAMP

_Configuration_

Open the script5 in your text editor and edit below:

set my_port=8000
set lan_int=Ethernet
set php_exe=C:\MAMP\bin\php\php7.2.10\php
set browser=C:\Program Files (x86)\Google\Chrome\Application\chrome

- php_exe: Needs to point to your executable.
- This can be either MAMP, XAMPP or WAMPs php

- lan_int: Needs to be changed to the name of your network adapter
- You can start a new command window and type below command to reveal the name.

- browser: Needs to be changed to the path for your prefered browser
- Tip is to use either Google Chrome or Mozilla Firefox for development

```CMD
interface ip show addresses
```

_Installation_

REM Add this script to path
REM Example: ;%HOMEDRIVE%%HOMEPATH%\script

## Linux

_Download_

```bash
wget
```