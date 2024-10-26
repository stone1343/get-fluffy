# *Get Fluffy!*

> Welcome to the Timbuktu!<br>
>    \- Igor

[Play now on GitHub Pages](https://stone1343.github.io/get-fluffy/public/index.html) (Desktop browser strongly recommended)

*Get Fluffy!* should be played on a modern desktop browser such Firefox, Chrome or Edge. Android, iOS, Glulxe or Lectrote have
not been tested and should not be used -- it probably won't work properly, but more importantly, you won't get the intended
experience.

Here's an example how to download *Get Fluffy!* from GitHub on Windows:

```
cd %USERPROFILE%\Downloads
if exist get-fluffy.zip del get-fluffy.zip
curl -L -o get-fluffy.zip https://github.com/stone1343/get-fluffy/archive/refs/heads/main.zip
if exist get-fluffy\. rmdir /s /q get-fluffy
"C:\Program Files\7-Zip\7z" x get-fluffy.zip
cd get-fluffy-main
play

inform6 get-fluffy.inf
python public\quixe\tools\game2js.py --giload get-fluffy.ulx>public\get-fluffy.ulx.js
```

or on Linux:

```bash
cd ~/Downloads
[ -d get-fluffy ] && rm -rf get-fluffy
git clone --depth 1 https://github.com/stone1343/get-fluffy.git
if [ -d "get-fluffy" ]; then
  cd get-fluffy
  ./play
fi
```

If you've downloaded the project from GitHub, you don't need to compile or build anything, everything's provided, ready to go.

To play using your default browser, on Windows double-click on play.bat or on Linux double-click on play (a Bash script).
Or to use a different browser, go to the public directory and right-click on index.html and use "Open With".

If you do want to build *Get Fluffy!*, you'll need the Inform 6 compiler and either Python or Lua. A makefile is provided:
* **make clean**, delete game files
* **make**, compile game files

Compiling without the makefile is simple enough,
* **inform get-fluffy.inf**

You can choose one of two ways to convert the .ulx file into JavaScript for Quixe:
* **lua game2js.lua get-fluffy.ulx>public/get-fluffy.ulx.js**
* **python3 public/quixe/tools/game2js.py --giload get-fluffy.ulx>public/get-fluffy.ulx.js**

Some known inconsistencies:
* Why does it seem like you're entering every room for the first time? Do you have amnesia? No, it just seems to fit the IF paradigm.
* Game play suggests Britney must have a smartphone, but she doesn't.
* Britney moves between floors without using the elevator as if there were stairs, but there are none.
