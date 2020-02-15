
INFORM = inform +include_path=./,inform6lib-6.12.3/
LUA = lua game2js.lua
INF = get-fluffy.inf fluffy-classes.inf fluffy-rooms.inf fluffy-people.inf fluffy-objects.inf fluffy-routines.inf
ULX = get-fluffy.ulx
JS = public/get-fluffy.ulx.js

all: $(ULX) $(JS)

# To optimize, use flags -~SG
$(ULX): $(INF)
	$(INFORM) -SDG get-fluffy.inf

# Quixe
$(JS): $(ULX)
	$(LUA) $(ULX) >$(JS)

clean:
	rm -f $(ULX) $(JS)
