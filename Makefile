# JMS 2018-09-30

ULX = get-fluffy.ulx get-fluffy-debug.ulx

INFORM = inform
LUA = lua
JS = public/get-fluffy.ulx.js public/get-fluffy-debug.ulx.js
ZIP = get-fluffy.zip

all: $(ULX) $(JS) $(ZIP)

# Glulx version
#  Removed +include_path=/home/jeff/inform_library-6.12.1,/home/jeff/inform_includes from inform commands
get-fluffy.ulx: get-fluffy.inf fluffy-classes.inf fluffy-objects.inf fluffy-routines.inf
	$(INFORM) -~SG +include_path=./ get-fluffy.inf
get-fluffy-debug.ulx: get-fluffy.inf fluffy-classes.inf fluffy-objects.inf fluffy-routines.inf
	$(INFORM) -SDG +include_path=./ get-fluffy.inf get-fluffy-debug.ulx

# Quixe
public/get-fluffy.ulx.js: get-fluffy.ulx
	$(LUA) game2js.lua get-fluffy.ulx >public/get-fluffy.ulx.js
public/get-fluffy-debug.ulx.js: get-fluffy-debug.ulx
	$(LUA) game2js.lua get-fluffy-debug.ulx >public/get-fluffy-debug.ulx.js

# Zip - only in Linux
get-fluffy.zip: public/get-fluffy.ulx.js public/get-fluffy-debug.ulx.js
	zip -r get-fluffy.zip public

# Clean, due to various issues, entire command is specified in OS area above
clean:
	rm -f get-fluffy.ulx get-fluffy-debug.ulx public/get-fluffy.ulx.js public/get-fluffy-debug.ulx.js
