
INFORM = inform +include_path=./,inform6lib-6.12.3/
#GAME2JS = lua game2js.lua
GAME2JS = python3 public/quixe/tools/game2js.py --giload
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

# ToDo: Optimize, use flags -~SG
$(ULX): $(INF)
	$(INFORM) -SDG get-fluffy.inf

# Build the .js for Quixe
$(JS): $(ULX)
	$(GAME2JS) $(ULX)>$(JS)

clean:
	$(RM) $(ULX) $(JS)
