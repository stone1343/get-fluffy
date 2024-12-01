# *Get Fluffy!*

> Welcome to the Timbuktu!<br>
>    \- Igor

[Play now on GitHub Pages](https://stone1343.github.io/get-fluffy/public/index.html) (Desktop browser strongly recommended)

*Get Fluffy!* should be played on a modern desktop browser such Firefox, Chrome or Edge. Android, iOS, Glulxe or Lectrote have
not been tested and should not be used -- it probably won't work properly, but more importantly, you won't get the intended
experience.

Here's an example how to download *Get Fluffy!* from GitHub on Windows, using Git:

```bat
cd %USERPROFILE%\Downloads
if exist get-fluffy\. rmdir /s /q get-fluffy
git clone --depth 1 https://github.com/stone1343/get-fluffy.git
start "" get-fluffy\public\index.html
```

or in Windows Subsystem for Linux (similar instructions for native Linux):

```bash
cd ~/Downloads
[ -d get-fluffy ] && rm -rf get-fluffy
git clone --depth 1 https://github.com/stone1343/get-fluffy.git
wslview get-fluffy/public/index.html
```

You can also download the .zip file from GitHub, unzip and open get-fluffy\public\index.html by double-clicking.

If you've cloned the project from GitHub, you don't need to compile or build anything, everything's provided, ready to go.

If you do want to build *Get Fluffy!*, you'll need the Inform 6 compiler and either Python or Lua, sample commands for Windows:

```bat
rem To compile, from Downloads\get-fluffy
inform6 get-fluffy.inf
rem Create get-fluffy.ulx.js using Python...
python public\quixe\tools\game2js.py --giload get-fluffy.ulx>public\get-fluffy.ulx.js
rem ... or Lua...
lua game2js.lua get-fluffy.ulx>public\get-fluffy.ulx.js
```
