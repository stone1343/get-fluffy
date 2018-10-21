! NEWFLAGS.H by Fredrik Ramsberg, adapted from FLAGS.H by Adam Cadre.
! NEWFLAGS.H is meant to be more efficient with system resources and
! more convenient to use than FLAGS.H.

! This is a simple system to provide on/off flags that only take up one bit of
! memory; thus, there's no need to waste memory (and global variables) by
! declaring a variable such as "doneflag" or some such, allocating an entire
! eight bits to a variable that will never be anything other than 0 or 1.

! Here's how to use it in your programs. First of all, set the constant
! FLAGCOUNT to the number of flags you need *before* including flags.h!
! Every time you use a flag, make sure you make a note of what it means.
! I make a commented list, like so:

! 0: Has Beauford eaten the corn and fed the raccoon in the proper order?
! 1: Has Hildegard booked her plane tickets with the correct credit card?
! ...
! 53: Is the weasel hiding in the pantaloons?

! You get the idea. Note that the first flag is flag #0, not flag #1.

! Setting a flag on or off means calling the routing SetFlag(flag#) or
! ClearFlag(flag#) to indicate that the weasel is in fact hiding in the
! pantaloons, call "SetFlag(53);", and to turn off that flag, call
! "ClearFlag(53);"  (Minus the quote marks, of course.)

! Testing a flag is accomplished by calling FlagOn or FlagOff. So if you have
! a piece of code that should only be run if the weasel is hiding in the
! pantaloons, you would enclose it in an "if (FlagOn(53)) { ... }" statement.
! Naturally, you can test if a flag is off by calling FlagOff instead.

Array FlagPowers ->
  $$00000001
  $$00000010
  $$00000100
  $$00001000
  $$00010000
  $$00100000
  $$01000000
  $$10000000;

#IFNDEF FLAGCOUNT;
 Constant FLAGCOUNT=8; ! This is the default number of flags. Override it by
                       ! defining the constant, giving it a different value,
                       ! before including this file.
#ENDIF;

Array flag -> FLAGCOUNT/8 + (FLAGCOUNT%8 > 0);

[ SetFlag x y;
  y = x / 8;
  flag->y = flag->y | FlagPowers->(x%8);
];

[ ClearFlag x y;
  y = x / 8;
  flag->y = flag->y & ~FlagPowers->(x%8);
];

[ FlagOn x;
  return (flag->(x/8) & FlagPowers->(x%8) > 0);
];

[ FlagOff x;
  return (flag->(x/8)&FlagPowers->(x%8)==0);
];

