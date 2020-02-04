# JMS 2020-02-03

INFORM = inform
LUA = lua
ULX = get-fluffy.ulx get-fluffy-debug.ulx
JS = public/get-fluffy.ulx.js public/get-fluffy-debug.ulx.js

all: $(ULX) $(JS)

# Glulx version
get-fluffy.ulx: get-fluffy.inf fluffy-classes.inf fluffy-rooms.inf fluffy-people-and-objects.inf fluffy-routines.inf
	$(INFORM) -~SG +include_path=./,inform6lib-6.12.3/ get-fluffy.inf
get-fluffy-debug.ulx: get-fluffy.inf fluffy-classes.inf fluffy-rooms.inf fluffy-people-and-objects.inf fluffy-routines.inf
	$(INFORM) -SDG +include_path=./,inform6lib-6.12.3/ get-fluffy.inf get-fluffy-debug.ulx

# Quixe
public/get-fluffy.ulx.js: get-fluffy.ulx
	$(LUA) game2js.lua get-fluffy.ulx >public/get-fluffy.ulx.js
public/get-fluffy-debug.ulx.js: get-fluffy-debug.ulx
	$(LUA) game2js.lua get-fluffy-debug.ulx >public/get-fluffy-debug.ulx.js

clean:
	rm -f get-fluffy.ulx get-fluffy-debug.ulx public/get-fluffy.ulx.js public/get-fluffy-debug.ulx.js
