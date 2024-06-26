! ==============================================================================
!   LINKLPA:  Link declarations of common properties and attributes.
!
!   Supplied for use with Inform 6 -- Release 6.12.7dev -- Serial number 240409
!
!   Copyright Graham Nelson 1993-2004 and David Griffith 2012-2024
!
!   This code is licensed under either the traditional Inform license as
!   described by the DM4 or the Artistic License version 2.0.  See the
!   file COPYING in the distribution archive.
!
!   This file is automatically Included in your game file by "Parser".
! ==============================================================================

System_file;

! ------------------------------------------------------------------------------
!   Some VM-specific constants.
!   (WORDSIZE and TARGET_XXX are defined by the compiler.)
! ------------------------------------------------------------------------------

#Ifdef TARGET_ZCODE;
Constant NULL         = $ffff;
Constant WORD_HIGHBIT = $8000;
#Ifnot; ! TARGET_GLULX
Constant NULL         = $ffffffff;
Constant WORD_HIGHBIT = $80000000;
#Endif; ! TARGET_

! ------------------------------------------------------------------------------
!   The common attributes and properties.
! ------------------------------------------------------------------------------

Attribute animate;
Attribute absent;       Attribute non_floating alias absent;
Attribute clothing;
Attribute concealed;
Attribute container;
Attribute door;
Attribute edible;
Attribute enterable;
Attribute general;
Attribute light;
Attribute lockable;
Attribute locked;
Attribute moved;
Attribute on;
Attribute open;
Attribute openable;
Attribute proper;
Attribute scenery;
Attribute scored;
Attribute static;
Attribute supporter;
Attribute switchable;
Attribute talkable;
Attribute transparent;
Attribute visited;
Attribute workflag;
Attribute worn;

Attribute male;
Attribute female;
Attribute neuter;
Attribute pluralname;

#Ifdef INFIX;
#Ifndef infix__watching;
Attribute infix__watching;
#Endif;
#Endif;

! ------------------------------------------------------------------------------

Property additive before NULL;
Property additive after  NULL;
Property additive life   NULL;

Property n_to;
Property s_to;
Property e_to;
Property w_to;
Property ne_to;
Property nw_to;
Property se_to;
Property sw_to;
Property u_to;
Property d_to;
Property in_to;
Property out_to;

Property door_to;
Property with_key;
Property door_dir;
Property invent;
Property plural;
Property add_to_scope;
Property list_together;
Property react_before;
Property react_after;
Property grammar;
Property additive orders;

Property initial;
Property when_open;
Property when_closed;
Property when_on;
Property when_off;
Property description;
Property additive describe NULL;
Property article "a";

Property cant_go;

Property found_in;          ! For fiddly reasons this can't alias

Property time_left;
Property number;
Property additive time_out NULL;
Property daemon;
Property additive each_turn NULL;

Property capacity 100;

Property short_name 0;
Property short_name_indef 0;
Property parse_name 0;

Property articles;
Property inside_description;

! ==============================================================================
