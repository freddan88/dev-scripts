# Dev-scripts
Scripts to help web developers speed up their work

## macOS

#### Available Scripts:

#### More Download options:

```BASH
wget
```

```BASH
curl
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

#### Tested on:
* Windows 7 Home x64
* Windows 10 Pro x64

#### Available Scripts:
_Click to download as zip_

* [phpsrv.bat](Windows/phpsrv.zip?raw=true "Click here to download phpsrv.zip")

#### Dependencies:

A webserver with php eg XAMPP, MAMP or WAMP

Links:
* [XAMPP](https://www.apachefriends.org/index.html)
* [MAMP](https://www.mamp.info/en/)
* [WAMP](http://www.wampserver.com/en/)

#### Installation:

Option 1:

1. Extract phpsrv.zip to the root of your C: drive
2. Press Windows + R on your keyboard to start Run
3. Type this command to open to configuration:
```
rundll32 sysdm.cpl,EditEnvironmentVariables
```
4. Click on Path in user defined variables and then edit
5. Append this to the end of the value-string and save
6. Open a new CMD and type phpsrv to start the server and browser

Option 2:

Open CMD and type:

```
set Path=%PATH%;C:\$Bin && setx Path "%PATH%"
```
... DO NOT WRITE THIS COMMAND TWICE OR MORE ...

#### Configuration:

_Open the script in your text editor and edit below:_

```
set my_port=8000
set lan_int=Local Area Connection
set php_exe=C:\MAMP\bin\php\php7.2.10\php
set browser=C:\Program Files (x86)\Google\Chrome\Application\chrome
```
- php_exe: Needs to point to your executable.
<br/>- This can be either MAMP, XAMPP or WAMPs php

- lan_int: Needs to be changed to the name of your network adapter.
<br/>- Tip: In CMD you can type below command to reveal the name:
```
netsh interface ip show addresses
```
- browser: Needs to be changed to the path for your prefered browser
<br/>- Tip is to use either Google Chrome or Mozilla Firefox for development

## Linux

#### Available Scripts:

```bash
wget
```

#### Dependencies:

#### Configuration:

#### Installation: