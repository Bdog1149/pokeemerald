	.align 2, 0

gFallarborBattleTentMons: ; 85DF69C
; 0
	.2byte SPECIES_NUMEL
	.2byte MOVE_GROWL, MOVE_FLAMETHROWER, MOVE_TACKLE, MOVE_SUNNY_DAY
	.byte BATTLE_FRONTIER_ITEM_CHARCOAL
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_QUIET

; 1
	.2byte SPECIES_LINOONE
	.2byte MOVE_ODOR_SLEUTH, MOVE_COVET, MOVE_ROCK_SMASH, MOVE_CHARM
	.byte BATTLE_FRONTIER_ITEM_SILK_SCARF
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_DEFENSE
	.4byte NATURE_SASSY

; 2
	.2byte SPECIES_PLUSLE
	.2byte MOVE_SPARK, MOVE_GROWL, MOVE_QUICK_ATTACK, MOVE_FAKE_TEARS
	.byte BATTLE_FRONTIER_ITEM_MENTAL_HERB
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED
	.4byte NATURE_MODEST

; 3
	.2byte SPECIES_POOCHYENA
	.2byte MOVE_YAWN, MOVE_ODOR_SLEUTH, MOVE_HOWL, MOVE_FRUSTRATION
	.byte BATTLE_FRONTIER_ITEM_LEPPA_BERRY
	.byte F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK
	.4byte NATURE_NAUGHTY

; 4
	.2byte SPECIES_KECLEON
	.2byte MOVE_LICK, MOVE_SLASH, MOVE_FAINT_ATTACK, MOVE_PSYBEAM
	.byte BATTLE_FRONTIER_ITEM_WIKI_BERRY
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK
	.4byte NATURE_MODEST

; 5
	.2byte SPECIES_MAGIKARP
	.2byte MOVE_SPLASH, MOVE_TACKLE, MOVE_FLAIL, MOVE_NONE
	.byte BATTLE_FRONTIER_ITEM_DRAGON_SCALE
	.byte F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_QUIRKY

; 6
	.2byte SPECIES_SOLROCK
	.2byte MOVE_ROCK_THROW, MOVE_FLASH, MOVE_SANDSTORM, MOVE_PSYWAVE
	.byte BATTLE_FRONTIER_ITEM_HARD_STONE
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_DEFENSE | F_EV_SPREAD_HP
	.4byte NATURE_SASSY

; 7
	.2byte SPECIES_MAKUHITA
	.2byte MOVE_DETECT, MOVE_ARM_THRUST, MOVE_FAKE_OUT, MOVE_SMELLING_SALT
	.byte BATTLE_FRONTIER_ITEM_BLACK_BELT
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_ADAMANT

; 8
	.2byte SPECIES_MACHOKE
	.2byte MOVE_COUNTER, MOVE_REVENGE, MOVE_BULK_UP, MOVE_FOCUS_ENERGY
	.byte BATTLE_FRONTIER_ITEM_SCOPE_LENS
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK
	.4byte NATURE_NAIVE

; 9
	.2byte SPECIES_NINCADA
	.2byte MOVE_FURY_SWIPES, MOVE_ENDURE, MOVE_MUD_SLAP, MOVE_DIG
	.byte BATTLE_FRONTIER_ITEM_LUM_BERRY
	.byte F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK
	.4byte NATURE_SERIOUS

; 10
	.2byte SPECIES_BEAUTIFLY
	.2byte MOVE_FLASH, MOVE_MORNING_SUN, MOVE_HARDEN, MOVE_MEGA_DRAIN
	.byte BATTLE_FRONTIER_ITEM_BRIGHT_POWDER
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_SPEED | F_EV_SPREAD_DEFENSE | F_EV_SPREAD_ATTACK
	.4byte NATURE_QUIRKY

; 11
	.2byte SPECIES_DUSTOX
	.2byte MOVE_MOONLIGHT, MOVE_HARDEN, MOVE_POISON_STING, MOVE_PSYBEAM
	.byte BATTLE_FRONTIER_ITEM_FOCUS_BAND
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_SPEED | F_EV_SPREAD_DEFENSE
	.4byte NATURE_DOCILE

; 12
	.2byte SPECIES_ILLUMISE
	.2byte MOVE_METRONOME, MOVE_FLATTER, MOVE_WISH, MOVE_ATTRACT
	.byte BATTLE_FRONTIER_ITEM_SALAC_BERRY
	.byte F_EV_SPREAD_DEFENSE | F_EV_SPREAD_ATTACK
	.4byte NATURE_ADAMANT

; 13
	.2byte SPECIES_VOLBEAT
	.2byte MOVE_TACKLE, MOVE_MOONLIGHT, MOVE_SIGNAL_BEAM, MOVE_TAIL_GLOW
	.byte BATTLE_FRONTIER_ITEM_LEPPA_BERRY
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_ADAMANT

; 14
	.2byte SPECIES_NINJASK
	.2byte MOVE_DOUBLE_TEAM, MOVE_PROTECT, MOVE_DIG, MOVE_SAND_ATTACK
	.byte BATTLE_FRONTIER_ITEM_PETAYA_BERRY
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_SPEED | F_EV_SPREAD_DEFENSE | F_EV_SPREAD_HP
	.4byte NATURE_TIMID

; 15
	.2byte SPECIES_NINJASK
	.2byte MOVE_SWORDS_DANCE, MOVE_CUT, MOVE_FURY_CUTTER, MOVE_LEECH_LIFE
	.byte BATTLE_FRONTIER_ITEM_SILVER_POWDER
	.byte F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_ADAMANT

; 16
	.2byte SPECIES_ARON
	.2byte MOVE_METAL_CLAW, MOVE_PROTECT, MOVE_SHOCK_WAVE, MOVE_METAL_SOUND
	.byte BATTLE_FRONTIER_ITEM_SCOPE_LENS
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_LONELY

; 17
	.2byte SPECIES_ARON
	.2byte MOVE_SECRET_POWER, MOVE_METAL_CLAW, MOVE_IRON_DEFENSE, MOVE_MUD_SLAP
	.byte BATTLE_FRONTIER_ITEM_SITRUS_BERRY
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED
	.4byte NATURE_GENTLE

; 18
	.2byte SPECIES_ELECTRIKE
	.2byte MOVE_CRUNCH, MOVE_THUNDER_WAVE, MOVE_HOWL, MOVE_QUICK_ATTACK
	.byte BATTLE_FRONTIER_ITEM_SEA_INCENSE
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK
	.4byte NATURE_HASTY

; 19
	.2byte SPECIES_MAGNEMITE
	.2byte MOVE_THUNDER_WAVE, MOVE_SUPERSONIC, MOVE_ENDURE, MOVE_SPARK
	.byte BATTLE_FRONTIER_ITEM_MAGNET
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_QUIET

; 20
	.2byte SPECIES_VOLTORB
	.2byte MOVE_CHARGE, MOVE_SPARK, MOVE_SCREECH, MOVE_SONIC_BOOM
	.byte BATTLE_FRONTIER_ITEM_ASPEAR_BERRY
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED
	.4byte NATURE_MODEST

; 21
	.2byte SPECIES_WHISMUR
	.2byte MOVE_REST, MOVE_SLEEP_TALK, MOVE_HYPER_VOICE, MOVE_ATTRACT
	.byte BATTLE_FRONTIER_ITEM_LAX_INCENSE
	.byte F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_ADAMANT

; 22
	.2byte SPECIES_LOUDRED
	.2byte MOVE_STOMP, MOVE_REST, MOVE_SCREECH, MOVE_UPROAR
	.byte BATTLE_FRONTIER_ITEM_CHESTO_BERRY
	.byte F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_ADAMANT

; 23
	.2byte SPECIES_LINOONE
	.2byte MOVE_FURY_SWIPES, MOVE_SAND_ATTACK, MOVE_SHOCK_WAVE, MOVE_GROWL
	.byte BATTLE_FRONTIER_ITEM_MAGNET
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_MODEST

; 24
	.2byte SPECIES_MIGHTYENA
	.2byte MOVE_SAND_ATTACK, MOVE_HOWL, MOVE_SWAGGER, MOVE_SECRET_POWER
	.byte BATTLE_FRONTIER_ITEM_KINGS_ROCK
	.byte F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_JOLLY

; 25
	.2byte SPECIES_SWABLU
	.2byte MOVE_TAKE_DOWN, MOVE_SING, MOVE_GROWL, MOVE_SAFEGUARD
	.byte BATTLE_FRONTIER_ITEM_FOCUS_BAND
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_DEFENSE | F_EV_SPREAD_HP
	.4byte NATURE_QUIRKY

; 26
	.2byte SPECIES_SKARMORY
	.2byte MOVE_AGILITY, MOVE_STEEL_WING, MOVE_SAND_ATTACK, MOVE_TORMENT
	.byte BATTLE_FRONTIER_ITEM_METAL_COAT
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_BOLD

; 27
	.2byte SPECIES_GOLBAT
	.2byte MOVE_CONFUSE_RAY, MOVE_BITE, MOVE_DOUBLE_TEAM, MOVE_SUBSTITUTE
	.byte BATTLE_FRONTIER_ITEM_PETAYA_BERRY
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_DEFENSE | F_EV_SPREAD_HP
	.4byte NATURE_BOLD

; 28
	.2byte SPECIES_WINGULL
	.2byte MOVE_WING_ATTACK, MOVE_HAIL, MOVE_DOUBLE_TEAM, MOVE_SUPERSONIC
	.byte BATTLE_FRONTIER_ITEM_RAWST_BERRY
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_SPEED
	.4byte NATURE_MODEST

; 29
	.2byte SPECIES_PELIPPER
	.2byte MOVE_TWISTER, MOVE_ICY_WIND, MOVE_DOUBLE_TEAM, MOVE_WATER_GUN
	.byte BATTLE_FRONTIER_ITEM_DRAGON_FANG
	.byte F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK
	.4byte NATURE_ADAMANT

; 30
	.2byte SPECIES_BARBOACH
	.2byte MOVE_SPARK, MOVE_WATER_GUN, MOVE_EARTHQUAKE, MOVE_WATER_SPORT
	.byte BATTLE_FRONTIER_ITEM_LIECHI_BERRY
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_MODEST

; 31
	.2byte SPECIES_WAILMER
	.2byte MOVE_WATER_PULSE, MOVE_RAIN_DANCE, MOVE_SPLASH, MOVE_CURSE
	.byte BATTLE_FRONTIER_ITEM_KINGS_ROCK
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_ATTACK
	.4byte NATURE_QUIET

; 32
	.2byte SPECIES_MARILL
	.2byte MOVE_DEFENSE_CURL, MOVE_ROLLOUT, MOVE_BUBBLE_BEAM, MOVE_ATTRACT
	.byte BATTLE_FRONTIER_ITEM_HARD_STONE
	.byte F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_ADAMANT

; 33
	.2byte SPECIES_GOLDEEN
	.2byte MOVE_WATERFALL, MOVE_RAIN_DANCE, MOVE_FLAIL, MOVE_PROTECT
	.byte BATTLE_FRONTIER_ITEM_GANLON_BERRY
	.byte F_EV_SPREAD_SP_ATTACK | F_EV_SPREAD_ATTACK
	.4byte NATURE_HASTY

; 34
	.2byte SPECIES_GOLDEEN
	.2byte MOVE_SLEEP_TALK, MOVE_HORN_DRILL, MOVE_REST, MOVE_SUPERSONIC
	.byte BATTLE_FRONTIER_ITEM_MENTAL_HERB
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_DEFENSE | F_EV_SPREAD_HP
	.4byte NATURE_CAREFUL

; 35
	.2byte SPECIES_TRAPINCH
	.2byte MOVE_RETURN, MOVE_SAND_ATTACK, MOVE_ATTRACT, MOVE_STRENGTH
	.byte BATTLE_FRONTIER_ITEM_MAGO_BERRY
	.byte F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK
	.4byte NATURE_ADAMANT

; 36
	.2byte SPECIES_BALTOY
	.2byte MOVE_SELF_DESTRUCT, MOVE_SANDSTORM, MOVE_RAPID_SPIN, MOVE_MIMIC
	.byte BATTLE_FRONTIER_ITEM_SCOPE_LENS
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK
	.4byte NATURE_JOLLY

; 37
	.2byte SPECIES_GRAVELER
	.2byte MOVE_ROCK_BLAST, MOVE_DEFENSE_CURL, MOVE_MAGNITUDE, MOVE_MUD_SPORT
	.byte BATTLE_FRONTIER_ITEM_HARD_STONE
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_HP
	.4byte NATURE_ADAMANT

; 38
	.2byte SPECIES_SANDSHREW
	.2byte MOVE_SAND_TOMB, MOVE_SANDSTORM, MOVE_DOUBLE_TEAM, MOVE_FOCUS_PUNCH
	.byte BATTLE_FRONTIER_ITEM_SOFT_SAND
	.byte F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK
	.4byte NATURE_JOLLY

; 39
	.2byte SPECIES_SWALOT
	.2byte MOVE_YAWN, MOVE_ENCORE, MOVE_BULLET_SEED, MOVE_SLUDGE
	.byte BATTLE_FRONTIER_ITEM_SCOPE_LENS
	.byte F_EV_SPREAD_ATTACK | F_EV_SPREAD_HP
	.4byte NATURE_BRAVE

; 40
	.2byte SPECIES_SHROOMISH
	.2byte MOVE_HEADBUTT, MOVE_SPORE, MOVE_SWAGGER, MOVE_LEECH_SEED
	.byte BATTLE_FRONTIER_ITEM_QUICK_CLAW
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_DEFENSE | F_EV_SPREAD_HP
	.4byte NATURE_IMPISH

; 41
	.2byte SPECIES_KIRLIA
	.2byte MOVE_HYPNOSIS, MOVE_GROWL, MOVE_ATTRACT, MOVE_DREAM_EATER
	.byte BATTLE_FRONTIER_ITEM_SITRUS_BERRY
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_ATTACK
	.4byte NATURE_ADAMANT

; 42
	.2byte SPECIES_LOMBRE
	.2byte MOVE_NATURE_POWER, MOVE_WATER_GUN, MOVE_RAIN_DANCE, MOVE_FLASH
	.byte BATTLE_FRONTIER_ITEM_LEFTOVERS
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_DEFENSE | F_EV_SPREAD_HP
	.4byte NATURE_BASHFUL

; 43
	.2byte SPECIES_NUZLEAF
	.2byte MOVE_NATURE_POWER, MOVE_TORMENT, MOVE_SWAGGER, MOVE_REST
	.byte BATTLE_FRONTIER_ITEM_CHESTO_BERRY
	.byte F_EV_SPREAD_SPEED | F_EV_SPREAD_ATTACK
	.4byte NATURE_ADAMANT

; 44
	.2byte SPECIES_CACNEA
	.2byte MOVE_SANDSTORM, MOVE_NEEDLE_ARM, MOVE_TEETER_DANCE, MOVE_LEECH_SEED
	.byte BATTLE_FRONTIER_ITEM_BRIGHT_POWDER
	.byte F_EV_SPREAD_SP_DEFENSE | F_EV_SPREAD_SPEED | F_EV_SPREAD_DEFENSE | F_EV_SPREAD_HP
	.4byte NATURE_ADAMANT