
INFORM = inform +include_path=./,inform6lib-6.12.3/
LUA = lua game2js.lua
INF = get-fluffy.inf fluffy-classes.inf fluffy-rooms.inf fluffy-people.inf fluffy-objects.inf fluffy-routines.inf
ULX = get-fluffy.ulx
ifdef OS
  JS = public\get-fluffy.ulx.js
  RM = del /q
else
  JS = public/get-fluffy.ulx.js
  RM = rm -f
endif

all: $(ULX) $(JS)

# Compile, to optimize, use flags -~SG
$(ULX): $(INF)
	$(INFORM) -SDG get-fluffy.inf

# Build the .js requred by Quixe
$(JS): $(ULX)
	$(LUA) $(ULX) >$(JS)

clean:
	$(RM) $(ULX) $(JS)
