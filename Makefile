
INF = get-fluffy.inf fluffy-classes.inf fluffy-rooms.inf fluffy-people.inf fluffy-objects.inf fluffy-routines.inf
ULX = get-fluffy.ulx
# If OS is defined, then it's Windows
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
#  During development, -SDGd2s
#  For release to public -~S~DGd2w (2 warnings about i and o not used in DrawStatusLine (fluffy-routines.inf)
$(ULX): $(INF) newflags.h smartcantgo.h
	inform -SDGd2s +language_name=english +.,inform6lib get-fluffy.inf

# Convert to .js for Quixe
$(JS): $(ULX)
	$(GAME2JS) $(ULX)>$(JS)

clean:
	$(RM) $(ULX) $(JS)

.PHONY: all clean
