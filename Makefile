
INFORM = inform +include_path=./,inform6lib-6.12.3/
LUA = lua game2js.lua
INF = get-fluffy.inf fluffy-classes.inf fluffy-rooms.inf fluffy-people.inf fluffy-objects.inf fluffy-routines.inf
ULX = get-fluffy.ulx get-fluffy-debug.ulx
JS = public/get-fluffy.ulx.js public/get-fluffy-debug.ulx.js

all: $(ULX) $(JS)

# Glulx version
get-fluffy.ulx: $(INF)
	$(INFORM) -~SG get-fluffy.inf
get-fluffy-debug.ulx: $(INF)
	$(INFORM) -SDG get-fluffy.inf get-fluffy-debug.ulx

# Quixe
public/get-fluffy.ulx.js: get-fluffy.ulx
	$(LUA) get-fluffy.ulx >public/get-fluffy.ulx.js
public/get-fluffy-debug.ulx.js: get-fluffy-debug.ulx
	$(LUA) get-fluffy-debug.ulx >public/get-fluffy-debug.ulx.js

clean:
	rm -f $(ULX) $(JS)
