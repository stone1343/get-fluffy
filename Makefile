# JMS 2019-10-05

INFORM = inform
LUA = lua
ULX = get-fluffy.ulx get-fluffy-debug.ulx
JS = public/get-fluffy.ulx.js public/get-fluffy-debug.ulx.js

all: inform6lib-6.12.3/English.h $(ULX) $(JS)

inform6lib-6.12.3/English.h:
	ln inform6lib-6.12.3/english.h inform6lib-6.12.3/English.h

# Glulx version
get-fluffy.ulx: get-fluffy.inf fluffy-classes.inf fluffy-objects.inf fluffy-routines.inf
	$(INFORM) -~SG +include_path=./,inform6lib-6.12.3/ get-fluffy.inf
get-fluffy-debug.ulx: get-fluffy.inf fluffy-classes.inf fluffy-objects.inf fluffy-routines.inf
	$(INFORM) -SDG +include_path=./,inform6lib-6.12.3/ get-fluffy.inf get-fluffy-debug.ulx

# Quixe
public/get-fluffy.ulx.js: get-fluffy.ulx
	$(LUA) game2js.lua get-fluffy.ulx >public/get-fluffy.ulx.js
public/get-fluffy-debug.ulx.js: get-fluffy-debug.ulx
	$(LUA) game2js.lua get-fluffy-debug.ulx >public/get-fluffy-debug.ulx.js

clean:
	rm -f inform6lib-6.12.3/English.h get-fluffy.ulx get-fluffy-debug.ulx public/get-fluffy.ulx.js public/get-fluffy-debug.ulx.js
