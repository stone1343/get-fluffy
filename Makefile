
INFORM = inform
INF = get-fluffy.inf fluffy-classes.inf fluffy-rooms.inf fluffy-people.inf fluffy-objects.inf fluffy-routines.inf
ULX = get-fluffy.ulx
# OS means it's Windows
ifdef OS
  GAME2JS = lua game2js.lua
  JS = public\get-fluffy.ulx.js
  RM = del /q
else
  GAME2JS = python3 public/quixe/tools/game2js.py --giload
  JS = public/get-fluffy.ulx.js
  RM = rm -f
endif

all: $(ULX) $(JS)

# Compile to .ulx
$(ULX): $(INF)
	$(INFORM) get-fluffy.inf

# Convert to .js for Quixe
$(JS): $(ULX)
	$(GAME2JS) $(ULX)>$(JS)

clean:
	$(RM) $(ULX) $(JS)
