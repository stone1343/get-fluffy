# JMS 2018-10-21

INFORM = inform
LUA = lua
ULX = get-fluffy.ulx get-fluffy-debug.ulx
JS = public/get-fluffy.ulx.js public/get-fluffy-debug.ulx.js

all: $(ULX) $(JS)

# Glulx version
get-fluffy.ulx: get-fluffy.inf fluffy-classes.inf fluffy-objects.inf fluffy-routines.inf
	$(INFORM) -~SG +include_path=./ get-fluffy.inf
get-fluffy-debug.ulx: get-fluffy.inf fluffy-classes.inf fluffy-objects.inf fluffy-routines.inf
	$(INFORM) -SDG +include_path=./ get-fluffy.inf get-fluffy-debug.ulx

# Quixe
public/get-fluffy.ulx.js: get-fluffy.ulx
	$(LUA) game2js.lua get-fluffy.ulx >public/get-fluffy.ulx.js
public/get-fluffy-debug.ulx.js: get-fluffy-debug.ulx
	$(LUA) game2js.lua get-fluffy-debug.ulx >public/get-fluffy-debug.ulx.js

clean:
	rm -f get-fluffy.ulx get-fluffy-debug.ulx public/get-fluffy.ulx.js public/get-fluffy-debug.ulx.js
