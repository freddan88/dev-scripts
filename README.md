## Dev-scripts
Scripts to help web developers speed up their work...

### Available Scripts:
|Script name|  macOS  | Windows |  Linux  |
|:---|:---:|:---:|:---:|
|phpsrv|Available|Available|Available|
|npmgensh|Available|Not available|Not available|

#### phpsrv
This script will launch a small php/http server in the current working directory

##### macOS-phpsrv

###### Tested on:

###### Dependencies:
_You need to have PHP a Web Browser and some tools installed:_ 
> Examples:
> - Browser: Google Chrome
> - Browser: Mozilla Firefox
> - PHP: Bundled in MAMP
> - PHP: Bundled in XAMP
> - PHP: From PHP.net

###### Installation:
1 Download and extract the script from your terminal
```BASH
wget
unzip
```
2 Change permissions on the script to make it executable
```BASH
chmod 754 phpsrv
```
3 Create a link to a directory in your Path
```BASH
ln -s
```
###### Configuration:
```
1
2
3
```
###### Usage:
_Open a new terminal and type phpsrv_
```BASH
/Users/user/Desktop: phpsrv
```
---
##### Windows-phpsrv

###### Tested on:
- Windows 7 Home x64
- Windows 10 Pro x64

###### Dependencies:
_You need to have PHP and a Web Browser installed:_ 
> Examples:
> - Browser: Google Chrome
> - Browser: Mozilla Firefox
> - PHP: [Bundled in XAMPP](https://www.apachefriends.org/index.html)
> - PHP: [Bundled in MAMP](https://www.mamp.info/en/)
> - PHP: [Bundled in WAMP](http://www.wampserver.com/en/)
> - PHP: [From PHP.net](https://secure.php.net/downloads.php)

###### Installation:
_Click to download as zip_
* [phpsrv.bat](Windows/phpsrv.zip?raw=true "Click here to download phpsrv.zip")


* 1 Extract phpsrv.zip to the root of your C: drive
* 2 Press Windows + R on your keyboard to start Run
* 3 Type this command to open to configuration:

```
rundll32 sysdm.cpl,EditEnvironmentVariables
```
* 4 Click on Path in user defined variables and then edit
* 5 Append this to the end of the value-string and click save

```
;C:\$Bin
```

###### Configuration:
_Open the script in your text editor and edit below:_

```
set my_port=8000
set lan_int=Local Area Connection
set php_exe=C:\MAMP\bin\php\php7.2.10\php
set browser=C:\Program Files (x86)\Google\Chrome\Application\chrome
```
- php_exe: Needs to point to your executable.
<br/>- This can be either MAMP, XAMPP or WAMPs php

- lan_int: Change to the name of your network adapter.
<br/>- Tip: In CMD you can type below command to reveal the name

```
netsh interface ip show addresses
```

- browser: Change to the path to your browser
<br/>- Tip is to use either Google Chrome or Mozilla Firefox

###### Usage:
_Open a new prompt (CMD) and type phpsrv_
```
C:\htdocs>phpsrv
```
---

##### Linux-phpsrv

###### Tested on:

###### Dependencies:
_You need to have PHP a Web Browser and some tools installed:_ 
> Examples:
> - Browser: Google Chrome
> - Browser: Mozilla Firefox
> - PHP: Bundled in LAMP Ubuntu
> - PHP: Bundled in LAMP CentOS6
> - PHP: Bundled in LAMP CentOS7
> - PHP: Bundled in HTTPSRV
> - PHP: Bundled in XAMP
> - PHP: From PHP.net

###### Installation:
1 Download you extract the script from your terminal
```BASH
wget
```
2 Change permissions on the script to make it executable
```BASH
chmod 754 phpsrv
```
3 Create a link to a directory in your Path
```BASH
ln -s
```
###### Configuration:
```
1
2
3
```
###### Usage:
_Open a new terminal and type phpsrv_
```BASH
/home/user: phpsrv
```