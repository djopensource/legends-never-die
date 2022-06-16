
'  _      ______ _____ ______ _   _ _____   _____   _   _ ________      ________ _____    _____ _____ ______ 
' | |    |  ____/ ____|  ____| \ | |  __ \ / ____| | \ | |  ____\ \    / /  ____|  __ \  |  __ \_   _|  ____|
' | |    | |__ | |  __| |__  |  \| | |  | | (___   |  \| | |__   \ \  / /| |__  | |__) | | |  | || | | |__   
' | |    |  __|| | |_ |  __| | . ` | |  | |\___ \  | . ` |  __|   \ \/ / |  __| |  _  /  | |  | || | |  __|  
' | |____| |___| |__| | |____| |\  | |__| |____) | | |\  | |____   \  /  | |____| | \ \  | |__| || |_| |____ 
' |______|______\_____|______|_| \_|_____/|_____/  |_| \_|______|   \/   |______|_|  \_\ |_____/_____|______|
'                                                                                                            
'
'Version 1.0 Beta
'
'Designed, programmed & produced by Aggelos Mavros aka Open Source.
'
'https://www.DJopensource.com
'
'

DEFINT A-Z

DIM SHARED player%, kakos%, difficulty%, playertwo%, playerblock%, playertwoblock%, kakosblock%

DIM SHARED x%, y%, xtwo%, ytwo%, poneh%, ptwoh%, ani%, anitwo%, background%, blow%, roundsplayed%, gyros%, win%, a%, b%

DECLARE SUB delay (P)
DECLARE SUB graphics ()
DECLARE SUB graphicstwo ()
DECLARE SUB sounds ()
DECLARE SUB controls ()
DECLARE SUB controlstwo ()
DECLARE SUB intro ()
DECLARE SUB aizero ()
DECLARE SUB energybar ()
DECLARE SUB energybartwo ()
DECLARE SUB fight ()
DECLARE SUB fighttwo ()
DECLARE SUB round ()
DECLARE SUB oneplayer ()
DECLARE SUB gameover ()
DECLARE SUB kakoshurt ()
DECLARE SUB smalltune ()
DECLARE SUB menu ()
DECLARE SUB screent ()
DECLARE SUB screenttwo ()
DECLARE SUB lim1 ()
DECLARE SUB limx ()
DECLARE SUB limy ()
DECLARE SUB newintro ()
DECLARE SUB seecontrols ()
DECLARE SUB menu2 ()
DECLARE SUB brucelee ()
DECLARE SUB chucknorris ()
DECLARE SUB miketyson ()
DECLARE SUB kakoshurt3 ()
DECLARE SUB kakoshurttwo ()
DECLARE SUB menudif ()
DECLARE SUB twoplayers ()
DECLARE SUB twoplayersgame ()
DECLARE SUB twoplayerstwo ()

    '$DYNAMIC

    DEFINT A-Z
    DIM SHARED tite(1 TO 2301) AS LONG
    DEF SEG = VARSEG(tite(1))
    BLOAD "tite.bsv", VARPTR(tite(1))
    DEF SEG


    DEFINT A-Z
    DIM SHARED obruce(1 TO 1881) AS LONG
    DEF SEG = VARSEG(obruce(1))
    BLOAD "obruce.bsv", VARPTR(obruce(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED obrucebl(1 TO 1881) AS LONG
    DEF SEG = VARSEG(obrucebl(1))
    BLOAD "obrucebl.bsv", VARPTR(obrucebl(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED obruceh(1 TO 1881) AS LONG
    DEF SEG = VARSEG(obruceh(1))
    BLOAD "obruceh.bsv", VARPTR(obruceh(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED obrucep(1 TO 1881) AS LONG
    DEF SEG = VARSEG(obrucep(1))
    BLOAD "obrucep.bsv", VARPTR(obruce(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED obrucew(1 TO 1881) AS LONG
    DEF SEG = VARSEG(obrucew(1))
    BLOAD "obrucew.bsv", VARPTR(obrucew(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED obrucek(1 TO 1881) AS LONG
    DEF SEG = VARSEG(obrucek(1))
    BLOAD "obrucek.bsv", VARPTR(obrucek(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED ochuck(1 TO 1881) AS LONG
    DEF SEG = VARSEG(ochuck(1))
    BLOAD "ochuck.bsv", VARPTR(ochuck(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED ochuckw(1 TO 1881) AS LONG
    DEF SEG = VARSEG(ochuckw(1))
    BLOAD "ochuckw.bsv", VARPTR(ochuckw(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED ochuckp(1 TO 1881) AS LONG
    DEF SEG = VARSEG(ochuckp(1))
    BLOAD "ochuckp.bsv", VARPTR(ochuckp(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED ochuckh(1 TO 1881) AS LONG
    DEF SEG = VARSEG(ochuckh(1))
    BLOAD "ochuckh.bsv", VARPTR(ochuckh(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED ochuckbl(1 TO 1881) AS LONG
    DEF SEG = VARSEG(ochuckbl(1))
    BLOAD "ochuckbl.bsv", VARPTR(ochuckbl(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED ochuckk(1 TO 1881) AS LONG
    DEF SEG = VARSEG(ochuckk(1))
    BLOAD "ochuckk.bsv", VARPTR(ochuckk(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED omike(1 TO 1881) AS LONG
    DEF SEG = VARSEG(omike(1))
    BLOAD "omike.bsv", VARPTR(omike(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED omikew(1 TO 1881) AS LONG
    DEF SEG = VARSEG(omikew(1))
    BLOAD "omikew.bsv", VARPTR(omikew(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED omikep(1 TO 1881) AS LONG
    DEF SEG = VARSEG(omikep(1))
    BLOAD "omikep.bsv", VARPTR(omikep(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED omikeh(1 TO 1881) AS LONG
    DEF SEG = VARSEG(omikeh(1))
    BLOAD "omikeh.bsv", VARPTR(omikeh(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED omikek(1 TO 1881) AS LONG
    DEF SEG = VARSEG(omikek(1))
    BLOAD "omikek.bsv", VARPTR(omikek(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED omikebl(1 TO 1881) AS LONG
    DEF SEG = VARSEG(omikebl(1))
    BLOAD "omikebl.bsv", VARPTR(omikebl(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED ocliff(1 TO 1881) AS LONG
    DEF SEG = VARSEG(ocliff(1))
    BLOAD "ocliff.bsv", VARPTR(ocliff(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED ocliffw(1 TO 1881) AS LONG
    DEF SEG = VARSEG(ocliffw(1))
    BLOAD "ocliffw.bsv", VARPTR(ocliffw(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED ocliffp(1 TO 1881) AS LONG
    DEF SEG = VARSEG(ocliffp(1))
    BLOAD "ocliffp.bsv", VARPTR(ocliffp(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED ocliffh(1 TO 1881) AS LONG
    DEF SEG = VARSEG(ocliffh(1))
    BLOAD "ocliffh.bsv", VARPTR(ocliffh(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED ground(1 TO 501) AS LONG
    DEF SEG = VARSEG(ground(1))
    BLOAD "ground.bsv", VARPTR(ground(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED bruce(1 TO 1881) AS LONG
    DEF SEG = VARSEG(bruce(1))
    BLOAD "bruce.bsv", VARPTR(bruce(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED brucebl(1 TO 1881) AS LONG
    DEF SEG = VARSEG(brucebl(1))
    BLOAD "brucebl.bsv", VARPTR(brucebl(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED bruceh(1 TO 1881) AS LONG
    DEF SEG = VARSEG(bruceh(1))
    BLOAD "bruceh.bsv", VARPTR(bruceh(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED brucep(1 TO 1881) AS LONG
    DEF SEG = VARSEG(brucep(1))
    BLOAD "brucep.bsv", VARPTR(bruce(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED brucek(1 TO 1881) AS LONG
    DEF SEG = VARSEG(brucek(1))
    BLOAD "brucek.bsv", VARPTR(brucek(1))
    DEF SEG


    DEFINT A-Z
    DIM SHARED brucew(1 TO 1881) AS LONG
    DEF SEG = VARSEG(brucew(1))
    BLOAD "brucew.bsv", VARPTR(brucew(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED chuck(1 TO 1881) AS LONG
    DEF SEG = VARSEG(chuck(1))
    BLOAD "chuck.bsv", VARPTR(chuck(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED chuckw(1 TO 1881) AS LONG
    DEF SEG = VARSEG(chuckw(1))
    BLOAD "chuckw.bsv", VARPTR(chuckw(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED chuckp(1 TO 1881) AS LONG
    DEF SEG = VARSEG(chuckp(1))
    BLOAD "chuckp.bsv", VARPTR(chuckp(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED chuckh(1 TO 1881) AS LONG
    DEF SEG = VARSEG(chuckh(1))
    BLOAD "chuckh.bsv", VARPTR(chuckh(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED chuckbl(1 TO 1881) AS LONG
    DEF SEG = VARSEG(chuckbl(1))
    BLOAD "chuckbl.bsv", VARPTR(chuckbl(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED chuckk(1 TO 1881) AS LONG
    DEF SEG = VARSEG(chuckk(1))
    BLOAD "chuckk.bsv", VARPTR(chuckk(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED mike(1 TO 1881) AS LONG
    DEF SEG = VARSEG(mike(1))
    BLOAD "mike.bsv", VARPTR(mike(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED mikew(1 TO 1881) AS LONG
    DEF SEG = VARSEG(mikew(1))
    BLOAD "mikew.bsv", VARPTR(mikew(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED mikep(1 TO 1881) AS LONG
    DEF SEG = VARSEG(mikep(1))
    BLOAD "mikep.bsv", VARPTR(mikep(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED mikeh(1 TO 1881) AS LONG
    DEF SEG = VARSEG(mikeh(1))
    BLOAD "mikeh.bsv", VARPTR(mikeh(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED mikek(1 TO 1881) AS LONG
    DEF SEG = VARSEG(mikek(1))
    BLOAD "mikek.bsv", VARPTR(mikek(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED mikebl(1 TO 1881) AS LONG
    DEF SEG = VARSEG(mikebl(1))
    BLOAD "mikebl.bsv", VARPTR(mikebl(1))
    DEF SEG

    DEFINT A-Z
    DIM SHARED hit1(1 TO 410) AS LONG
    DEF SEG = VARSEG(hit1(1))
    BLOAD "hit1.bsv", VARPTR(hit1(1))
    DEF SEG


CLS
SCREEN 13

'*********STARTING VALUES VARIABLES*******

x% = 10
y% = 68
xtwo% = 230
ytwo% = 68
poneh% = 100
ptwoh% = 100
ani% = 0
anitwo% = 0
player% = 1
kakos% = 2
difficulty% = 1
playerblock% = 0
playertwoblock% = 0

'**********THIS IS WHERE THE GAME STARTS***************************

intro
CLS
newintro
menu

'oneplayer

REM $STATIC

'------------------- Artificial intelligence --------------------------

SUB aizero


RANDOMIZE TIMER
LET h = INT(RND * 30) + 1

SELECT CASE h

CASE 1
IF kakos% = 1 AND xtwo% - x% <= 50 THEN
PUT (xtwo%, ytwo%), obrucep, PSET: delay 2
ELSEIF kakos% = 2 AND xtwo% - x% <= 50 THEN PUT (xtwo%, ytwo%), ochuckp, PSET: delay 2
ELSEIF kakos% = 3 AND xtwo% - x% <= 50 THEN PUT (xtwo%, ytwo%), omikep, PSET: delay 2
ELSEIF kakos% = 4 AND xtwo% - x% <= 50 THEN PUT (xtwo%, ytwo%), ocliffp, PSET: delay 2
ELSE
GOTO endof0
END IF
IF player% = 1 AND xtwo% - x% <= 50 AND playerblock% = 0 THEN
poneh% = poneh% - 5: SOUND 88, 1: lim1: limx: x% = x% - 5
PUT (x%, y%), bruceh, PSET: PUT (x% + 20, 90), hit1, PSET: delay 2: GOTO endof0
ELSEIF player% = 2 AND xtwo% - x% <= 50 AND playerblock% = 0 THEN
poneh% = poneh% - 5: SOUND 88, 1: lim1: limx: x% = x% - 5
PUT (x%, y%), chuckh, PSET
PUT (x% + 20, 90), hit1, PSET: delay 2: GOTO endof0
ELSEIF player% = 3 AND xtwo% - x% <= 50 AND playerblock% = 0 THEN
poneh% = poneh% - 5: SOUND 88, 1: lim1: limx: x% = x% - 5
PUT (x%, y%), mikeh, PSET
PUT (x% + 20, 90), hit1, PSET: delay 2: GOTO endof0
ELSEIF player% = 1 AND xtwo% - x% <= 50 AND playerblock% = 1 THEN
poneh% = poneh% - 1: SOUND 38, 1: lim1: limx: x% = x% - 5: GOTO endof0
ELSEIF player% = 2 AND xtwo% - x% <= 50 AND playerblock% = 1 THEN
poneh% = poneh% - 1: SOUND 38, 1: lim1: limx: x% = x% - 5: GOTO endof0
ELSEIF player% = 3 AND xtwo% - x% <= 50 AND playerblock% = 1 THEN
poneh% = poneh% - 1: SOUND 38, 1: lim1: limx: x% = x% - 5: GOTO endof0
ELSE
GOTO endof0
END IF


CASE 2
IF kakos% = 1 AND xtwo% - x% <= 55 THEN
PUT (xtwo%, ytwo%), obrucek, PSET: delay 2
ELSEIF kakos% = 2 AND xtwo% - x% <= 55 THEN PUT (xtwo%, ytwo%), ochuckk, PSET: delay 2
ELSEIF kakos% = 3 AND xtwo% - x% <= 55 THEN PUT (xtwo%, ytwo%), omikek, PSET: delay 2
ELSEIF kakos% = 4 AND xtwo% - x% <= 55 THEN PUT (xtwo%, ytwo%), ocliffp, PSET: delay 2
' cliffp because no memory to make new array
ELSE
GOTO endof0
END IF
IF player% = 1 AND xtwo% - x% <= 55 AND playerblock% = 0 THEN
poneh% = poneh% - 10: SOUND 88, 1: lim1: limx: x% = x% - 5
PUT (x%, y%), bruceh, PSET: PUT (x% + 20, 90), hit1, PSET: delay 2: GOTO endof0
ELSEIF player% = 2 AND xtwo% - x% <= 55 AND playerblock% = 0 THEN
poneh% = poneh% - 10: SOUND 88, 1: lim1: limx: x% = x% - 5
PUT (x%, y%), chuckh, PSET
PUT (x% + 20, 90), hit1, PSET: delay 2: GOTO endof0
ELSEIF player% = 3 AND xtwo% - x% <= 55 AND playerblock% = 0 THEN
poneh% = poneh% - 10: SOUND 88, 1: lim1: limx: x% = x% - 5
PUT (x%, y%), mikeh, PSET
PUT (x% + 20, 90), hit1, PSET: delay 2: GOTO endof0
ELSEIF player% = 1 AND xtwo% - x% <= 55 AND playerblock% = 1 THEN
poneh% = poneh% - 2: SOUND 38, 1: lim1: limx: x% = x% - 5: GOTO endof0
ELSEIF player% = 2 AND xtwo% - x% <= 55 AND playerblock% = 1 THEN
poneh% = poneh% - 2: SOUND 38, 1: lim1: limx: x% = x% - 5: GOTO endof0
ELSEIF player% = 3 AND xtwo% - x% <= 55 AND playerblock% = 1 THEN
poneh% = poneh% - 2: SOUND 38, 1: lim1: limx: x% = x% - 5: GOTO endof0
ELSE
GOTO endof0
END IF

CASE 3
xtwo% = xtwo% + 5
IF anitwo% = 0 THEN anitwo% = 1: GOTO endof0
IF anitwo% = 1 THEN anitwo% = 0: GOTO endof0

CASE 4
IF difficulty = 1 THEN
GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 1 THEN PUT (xtwo%, ytwo%), obrucebl, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 2 THEN PUT (xtwo%, ytwo%), ochuckbl, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 3 THEN PUT (xtwo%, ytwo%), omikebl, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 4 THEN PUT (xtwo%, ytwo%), ocliffp, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSE
GOTO endof0
END IF

CASE 5: lim1: limy: xtwo% = xtwo% + 5
IF anitwo% = 0 THEN anitwo% = 1: GOTO endof0
IF anitwo% = 1 THEN anitwo% = 0: GOTO endof0

CASE 6: lim1: limy: xtwo% = xtwo% - 5
IF anitwo% = 0 THEN anitwo% = 1: GOTO endof0
IF anitwo% = 1 THEN anitwo% = 0: GOTO endof0

CASE 7: lim1: limy: xtwo% = xtwo% - 5
IF anitwo% = 0 THEN anitwo% = 1: GOTO endof0
IF anitwo% = 1 THEN anitwo% = 0: GOTO endof0

CASE 8: lim1: limy: xtwo% = xtwo% - 5
IF anitwo% = 0 THEN anitwo% = 1: GOTO endof0
IF anitwo% = 1 THEN anitwo% = 0: GOTO endof0

CASE 9
IF difficulty = 1 THEN
GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 1 THEN PUT (xtwo%, ytwo%), obrucebl, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 2 THEN PUT (xtwo%, ytwo%), ochuckbl, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 3 THEN PUT (xtwo%, ytwo%), omikebl, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 4 THEN PUT (xtwo%, ytwo%), ocliffp, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSE
GOTO endof0
END IF

CASE 10
IF kakos% = 1 AND xtwo% - x% <= 50 THEN
PUT (xtwo%, ytwo%), obrucep, PSET: delay 2
ELSEIF kakos% = 2 AND xtwo% - x% <= 50 THEN PUT (xtwo%, ytwo%), ochuckp, PSET: delay 2
ELSEIF kakos% = 3 AND xtwo% - x% <= 50 THEN PUT (xtwo%, ytwo%), omikep, PSET: delay 2
ELSEIF kakos% = 4 AND xtwo% - x% <= 50 THEN PUT (xtwo%, ytwo%), ocliffp, PSET: delay 2
ELSE
GOTO endof0
END IF
IF player% = 1 AND xtwo% - x% <= 50 AND playerblock% = 0 THEN
poneh% = poneh% - 5: SOUND 128, 1: lim1: limx: x% = x% - 5
PUT (x%, y%), bruceh, PSET: PUT (x% + 20, 90), hit1, PSET: delay 2: GOTO endof0
ELSEIF player% = 2 AND xtwo% - x% <= 50 AND playerblock% = 0 THEN
poneh% = poneh% - 5: SOUND 128, 1: lim1: limx: x% = x% - 5
PUT (x%, y%), chuckh, PSET
PUT (x% + 20, 90), hit1, PSET: delay 2: GOTO endof0
ELSEIF player% = 3 AND xtwo% - x% <= 50 AND playerblock% = 0 THEN
poneh% = poneh% - 5: SOUND 128, 1: lim1: limx: x% = x% - 5
PUT (x%, y%), mikeh, PSET
PUT (x% + 20, 90), hit1, PSET: delay 2: GOTO endof0
ELSEIF player% = 1 AND xtwo% - x% <= 50 AND playerblock% = 1 THEN
poneh% = poneh% - 1: SOUND 38, 1: lim1: limx: x% = x% - 5: GOTO endof0
ELSEIF player% = 2 AND xtwo% - x% <= 50 AND playerblock% = 1 THEN
poneh% = poneh% - 1: SOUND 38, 1: lim1: limx: x% = x% - 5: GOTO endof0
ELSEIF player% = 3 AND xtwo% - x% <= 50 AND playerblock% = 1 THEN
poneh% = poneh% - 1: SOUND 38, 1: lim1: limx: x% = x% - 5: GOTO endof0
ELSE
GOTO endof0
END IF

CASE 11
IF kakos% = 1 AND xtwo% - x% <= 55 THEN
PUT (xtwo%, ytwo%), obrucek, PSET: delay 2
ELSEIF kakos% = 2 AND xtwo% - x% <= 55 THEN PUT (xtwo%, ytwo%), ochuckk, PSET: delay 2
ELSEIF kakos% = 3 AND xtwo% - x% <= 55 THEN PUT (xtwo%, ytwo%), omikek, PSET: delay 2
ELSEIF kakos% = 4 AND xtwo% - x% <= 55 THEN PUT (xtwo%, ytwo%), ocliffp, PSET: delay 2
' cliffp because no memory to make new array
ELSE
GOTO endof0
END IF
IF player% = 1 AND xtwo% - x% <= 55 AND playerblock% = 0 THEN
poneh% = poneh% - 10: SOUND 128, 1: lim1: limx: x% = x% - 5
PUT (x%, y%), bruceh, PSET: PUT (x% + 20, 90), hit1, PSET: delay 2: GOTO endof0
ELSEIF player% = 2 AND xtwo% - x% <= 55 AND playerblock% = 0 THEN
poneh% = poneh% - 10: SOUND 128, 1: lim1: limx: x% = x% - 5
PUT (x%, y%), chuckh, PSET
PUT (x% + 20, 90), hit1, PSET: delay 2: GOTO endof0
ELSEIF player% = 3 AND xtwo% - x% <= 55 AND playerblock% = 0 THEN
poneh% = poneh% - 10: SOUND 128, 1: lim1: limx: x% = x% - 5
PUT (x%, y%), mikeh, PSET
PUT (x% + 20, 90), hit1, PSET: delay 2: GOTO endof0
ELSEIF player% = 1 AND xtwo% - x% <= 55 AND playerblock% = 1 THEN
poneh% = poneh% - 2: SOUND 38, 1: lim1: limx: x% = x% - 5: GOTO endof0
ELSEIF player% = 2 AND xtwo% - x% <= 55 AND playerblock% = 1 THEN
poneh% = poneh% - 2: SOUND 38, 1: lim1: limx: x% = x% - 5: GOTO endof0
ELSEIF player% = 3 AND xtwo% - x% <= 55 AND playerblock% = 1 THEN
poneh% = poneh% - 2: SOUND 38, 1: lim1: limx: x% = x% - 5: GOTO endof0
ELSE
GOTO endof0
END IF

CASE 12
IF difficulty = 1 THEN
GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 1 THEN PUT (xtwo%, ytwo%), obrucebl, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 2 THEN PUT (xtwo%, ytwo%), ochuckbl, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 3 THEN PUT (xtwo%, ytwo%), omikebl, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 4 THEN PUT (xtwo%, ytwo%), ocliffp, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSE
GOTO endof0
END IF

CASE 13
IF difficulty = 1 THEN
GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 1 THEN PUT (xtwo%, ytwo%), obrucebl, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 2 THEN PUT (xtwo%, ytwo%), ochuckbl, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 3 THEN PUT (xtwo%, ytwo%), omikebl, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSEIF difficulty = 2 AND kakos% = 4 THEN PUT (xtwo%, ytwo%), ocliffp, PSET: kakosblock% = 1: delay 1: GOTO endof0
ELSE
GOTO endof0
END IF

CASE 14: GOTO endof0
CASE 15: GOTO endof0

CASE 16
IF kakos% = 1 THEN PUT (xtwo%, ytwo%), obrucebl, PSET: kakosblock% = 1: delay 1: GOTO endof0
IF kakos% = 2 THEN PUT (xtwo%, ytwo%), ochuckbl, PSET: kakosblock% = 1: delay 1: GOTO endof0
IF kakos% = 3 THEN PUT (xtwo%, ytwo%), omikebl, PSET: kakosblock% = 1: delay 1: GOTO endof0
IF kakos% = 4 THEN PUT (xtwo%, ytwo%), ocliffp, PSET: kakosblock% = 1: delay 1: GOTO endof0

CASE 17
IF kakos% = 1 THEN PUT (xtwo%, ytwo%), obrucebl, PSET: kakosblock% = 1: delay 1: GOTO endof0
IF kakos% = 2 THEN PUT (xtwo%, ytwo%), ochuckbl, PSET: kakosblock% = 1: delay 1: GOTO endof0
IF kakos% = 3 THEN PUT (xtwo%, ytwo%), omikebl, PSET: kakosblock% = 1: delay 1: GOTO endof0
IF kakos% = 4 THEN PUT (xtwo%, ytwo%), ocliffp, PSET: kakosblock% = 1: delay 1: GOTO endof0

CASE 18: GOTO endof0
CASE 19: GOTO endof0
CASE 20: GOTO endof0
CASE 21: GOTO endof0
CASE 22: GOTO endof0
CASE 23: GOTO endof0
CASE 24: GOTO endof0
CASE 25: GOTO endof0
CASE 26: GOTO endof0
CASE 27: GOTO endof0
CASE 28: GOTO endof0
CASE 29: GOTO endof0
CASE 30: GOTO endof0

END SELECT

endof0:
playerblock% = 0
END SUB

SUB brucelee
player% = 1
CALL oneplayer
END SUB

SUB chucknorris
player% = 2
CALL oneplayer
END SUB

DEFSNG A-Z
SUB controls
DO
SELECT CASE INKEY$
  CASE CHR$(0) + CHR$(75): GOTO left
  CASE CHR$(0) + CHR$(77): GOTO right
  CASE CHR$(32): GOTO punch

  CASE CHR$(107): GOTO kick
  CASE CHR$(75): GOTO kick

  CASE CHR$(98): GOTO block
  CASE CHR$(66): GOTO block

CASE CHR$(32): END

CASE ELSE: GOTO gyrosattack
END SELECT
LOOP


gyrosattack:

aizero
GOTO fin


left:
playerblock% = 0
IF ani% = 0 THEN ani% = 1: lim1: limx: limy: x% = x% - 5: GOTO fin
IF ani% = 1 THEN ani% = 0: lim1: limx: limy: x% = x% - 5: GOTO fin

right:
playerblock% = 0
IF ani% = 0 THEN ani% = 1: lim1: limx: limy: x% = x% + 5: GOTO fin
IF ani% = 1 THEN ani% = 0: lim1: limx: limy: x% = x% + 5: GOTO fin


block:

SELECT CASE player%

CASE 1
PUT (x%, y%), brucebl, PSET
playerblock% = 1

CASE 2
PUT (x%, y%), chuckbl, PSET
playerblock% = 1

CASE 3
PUT (x%, y%), mikebl, PSET
playerblock% = 1

END SELECT

delay 2
GOTO fin


punch:

playerblock% = 0
SELECT CASE player%

CASE 1
PUT (x%, y%), brucep, PSET

CASE 2
PUT (x%, y%), chuckp, PSET

CASE 3
PUT (x%, y%), mikep, PSET

END SELECT

IF xtwo% - x% <= 50 AND kakosblock% = 0 THEN
ptwoh% = ptwoh% - 5: xtwo% = xtwo% + 5: kakoshurt: SOUND 88, 1
PUT (xtwo% + 15, 90), hit1, PSET
ELSEIF xtwo% - x% <= 50 AND kakosblock% = 1 THEN
ptwoh% = ptwoh% - 1: xtwo% = xtwo% + 4: kakoshurt: SOUND 38, 1
ELSE
delay 2
GOTO fin:
END IF

delay 2

GOTO fin


kick:
playerblock% = 0
SELECT CASE player%

CASE 1
PUT (x%, y%), brucek, PSET

CASE 2
PUT (x%, y%), chuckk, PSET

CASE 3
PUT (x%, y%), mikek, PSET

END SELECT

IF xtwo% - x% <= 55 AND kakosblock% = 0 THEN
ptwoh% = ptwoh% - 10: xtwo% = xtwo% + 8: kakoshurt: SOUND 128, 1
PUT (xtwo% + 15, 110), hit1, PSET
ELSEIF xtwo% - x% <= 55 AND kakosblock% = 1 THEN
ptwoh% = ptwoh% - 2: xtwo% = xtwo% + 6: kakoshurt: SOUND 38, 1
ELSE
delay 2
GOTO fin:
END IF

delay 2
fin:
kakosblock% = 0
END SUB

SUB controlstwo
DO
SELECT CASE INKEY$
  CASE CHR$(0) + CHR$(75): GOTO left2
  CASE CHR$(0) + CHR$(77): GOTO right2
  CASE CHR$(32): GOTO punch2
  CASE CHR$(107): GOTO kick2
  CASE CHR$(75): GOTO kick2
  CASE CHR$(66): GOTO blocktwo
  CASE CHR$(98): GOTO blocktwo

  CASE CHR$(33): GOTO blocktwodeksia
  CASE CHR$(49): GOTO blocktwodeksia
  CASE CHR$(9): GOTO punch2deksia
  CASE CHR$(96): GOTO kick2deksia
  CASE CHR$(65): GOTO left2deksia
  CASE CHR$(97): GOTO left2deksia
  CASE CHR$(100): GOTO right2deksia
  CASE CHR$(68): GOTO right2deksia
CASE ELSE:
END SELECT
LOOP

left2:
playerblock% = 0
playertwoblock% = 0
IF ani% = 0 THEN ani% = 1: lim1: limx: x% = x% - 5: GOTO fin2
IF ani% = 1 THEN ani% = 0: lim1: limx: x% = x% - 5: GOTO fin2

left2deksia:
playerblock% = 0
playertwoblock% = 0
IF anitwo% = 0 THEN anitwo% = 1: lim1: limy: xtwo% = xtwo% - 5: GOTO fin2
IF anitwo% = 1 THEN anitwo% = 0: lim1: limy: xtwo% = xtwo% - 5: GOTO fin2

right2:
playerblock% = 0
playertwoblock% = 0
IF ani% = 0 THEN ani% = 1: lim1: limx: x% = x% + 5: GOTO fin2
IF ani% = 1 THEN ani% = 0: lim1: limx: x% = x% + 5: GOTO fin2

right2deksia:
playerblock% = 0
playertwoblock% = 0
IF anitwo% = 0 THEN anitwo% = 1: lim1: limy: xtwo% = xtwo% + 5: GOTO fin2
IF anitwo% = 1 THEN anitwo% = 0: lim1: limy: xtwo% = xtwo% + 5: GOTO fin2

punch2:

SELECT CASE player%

CASE 1
PUT (x%, y%), brucep, PSET

CASE 2
PUT (x%, y%), chuckp, PSET

CASE 3
PUT (x%, y%), mikep, PSET

END SELECT

IF xtwo% - x% <= 50 AND playertwoblock% = 0 THEN
ptwoh% = ptwoh% - 5: xtwo% = xtwo% + 5: kakoshurt3
PUT (xtwo% + 15, 90), hit1, PSET: SOUND 88, 1
ELSEIF xtwo% - x% <= 50 AND playertwoblock% = 1 THEN
ptwoh% = ptwoh% - 1: xtwo% = xtwo% + 4: kakoshurt3: SOUND 38, 1
ELSE
END IF
delay 2
playerblock% = 0
playertwoblock% = 0
GOTO fin2


punch2deksia:

SELECT CASE playertwo%

CASE 1
PUT (xtwo%, ytwo%), obrucep, PSET

CASE 2
PUT (xtwo%, ytwo%), ochuckp, PSET

CASE 3
PUT (xtwo%, ytwo%), omikep, PSET

END SELECT

IF xtwo% - x% <= 50 AND playerblock% = 0 THEN
poneh% = poneh% - 5: x% = x% - 5: kakoshurttwo
PUT (x% + 15, 90), hit1, PSET: SOUND 88, 1
ELSEIF xtwo% - x% <= 50 AND playerblock% = 1 THEN
poneh% = poneh% - 1: x% = x% - 4: kakoshurttwo: SOUND 38, 1

ELSE
END IF
delay 2
playerblock% = 0
playertwoblock% = 0

GOTO fin2



kick2:

SELECT CASE player%

CASE 1
PUT (x%, y%), brucek, PSET

CASE 2
PUT (x%, y%), chuckk, PSET

CASE 3
PUT (x%, y%), mikek, PSET

END SELECT

IF xtwo% - x% <= 55 AND playertwoblock% = 0 THEN
ptwoh% = ptwoh% - 10: xtwo% = xtwo% + 8: kakoshurt3
PUT (xtwo% + 15, 110), hit1, PSET: SOUND 128, 1
ELSEIF xtwo% - x% <= 55 AND playertwoblock% = 1 THEN
ptwoh% = ptwoh% - 2: xtwo% = xtwo% + 6: kakoshurt3: SOUND 38, 1
ELSE
END IF
delay 2
playerblock% = 0
playertwoblock% = 0
GOTO fin2


kick2deksia:

SELECT CASE playertwo%

CASE 1
PUT (xtwo%, ytwo%), obrucek, PSET

CASE 2
PUT (xtwo%, ytwo%), ochuckk, PSET

CASE 3
PUT (xtwo%, ytwo%), omikek, PSET

END SELECT

IF xtwo% - x% <= 55 AND playerblock% = 0 THEN
poneh% = poneh% - 10: x% = x% - 8: kakoshurttwo
PUT (x% + 15, 110), hit1, PSET: SOUND 128, 1
ELSEIF xtwo% - x% <= 55 AND playerblock% = 1 THEN
poneh% = poneh% - 2: x% = x% - 6: kakoshurttwo: SOUND 38, 1
ELSE
END IF

delay 2
playerblock% = 0
playertwoblock% = 0
GOTO fin2

blocktwo:

SELECT CASE player%

CASE 1
PUT (x%, y%), brucebl, PSET
playerblock% = 1

CASE 2
PUT (x%, y%), chuckbl, PSET
playerblock% = 1

CASE 3
PUT (x%, y%), mikebl, PSET
playerblock% = 1

END SELECT
delay 2

GOTO fin2


blocktwodeksia:

SELECT CASE playertwo%

CASE 1
PUT (xtwo%, ytwo%), obrucebl, PSET
playertwoblock% = 1

CASE 2
PUT (xtwo%, ytwo%), ochuckbl, PSET
playertwoblock% = 1

CASE 3
PUT (xtwo%, ytwo%), omikebl, PSET
playertwoblock% = 1

END SELECT
delay 2

GOTO fin2

fin2:
END SUB

DEFINT A-Z
SUB delay (P)

 STATIC OLDSPEED!
 FOR I = 1 TO P
   DO
     SPEED! = TIMER
   LOOP UNTIL SPEED! <> OLDSPEED!
   OLDSPEED! = SPEED!
 NEXT

END SUB

SUB energybar

COLOR 7
SELECT CASE player%

CASE 1
LOCATE 2, 2
PRINT "BRUCE LEE"; poneh%

CASE 2
LOCATE 2, 2
PRINT "CHUCK NORRIS"; poneh%

CASE 3
LOCATE 2, 2
PRINT "MIKE TYSON"; poneh%
END SELECT


COLOR 7
SELECT CASE kakos%
CASE 1
LOCATE 2, 26
PRINT ptwoh%; "BRUCE LEE "

CASE 2
LOCATE 2, 23
PRINT ptwoh%; "CHUCK NORRIS "

CASE 3
LOCATE 2, 25
PRINT ptwoh%; "MIKE TYSON "

CASE 4
LOCATE 2, 24
PRINT ptwoh%; "CLIFF BOOTH "

END SELECT

SELECT CASE background%

CASE 1
PUT (10, 161), ground, PSET
PUT (60, 161), ground, PSET
PUT (110, 161), ground, PSET
PUT (160, 161), ground, PSET
PUT (210, 161), ground, PSET
PUT (260, 161), ground, PSET

CASE 2
PUT (10, 161), ground, PSET
PUT (60, 161), ground, PSET
PUT (110, 161), ground, PSET
PUT (160, 161), ground, PSET
PUT (210, 161), ground, PSET
PUT (260, 161), ground, PSET

END SELECT
END SUB

SUB energybartwo

COLOR 7
SELECT CASE player%

CASE 1
LOCATE 2, 2
PRINT "BRUCE LEE"; poneh%

CASE 2
LOCATE 2, 2
PRINT "CHUCK NORRIS"; poneh%

CASE 3
LOCATE 2, 2
PRINT "MIKE TYSON"; poneh%
END SELECT

COLOR 7
SELECT CASE playertwo%
CASE 1
LOCATE 2, 26
PRINT ptwoh%; "BRUCE LEE "

CASE 2
LOCATE 2, 23
PRINT ptwoh%; "CHUCK NORRIS "

CASE 3
LOCATE 2, 25
PRINT ptwoh%; "MIKE TYSON "

CASE 4
LOCATE 2, 24
PRINT ptwoh%; "CLIFF BOOTH "
END SELECT

SELECT CASE background%

CASE 1
PUT (10, 161), ground, PSET
PUT (60, 161), ground, PSET
PUT (110, 161), ground, PSET
PUT (160, 161), ground, PSET
PUT (210, 161), ground, PSET
PUT (260, 161), ground, PSET

CASE 2
PUT (10, 161), ground, PSET
PUT (60, 161), ground, PSET
PUT (110, 161), ground, PSET
PUT (160, 161), ground, PSET
PUT (210, 161), ground, PSET
PUT (260, 161), ground, PSET

END SELECT

END SUB

SUB fight

'********HERE ARE THE UNGLOBAL SUB VARIABLES
roundsplayed% = 0
ponewin% = 0
ptwowin% = 0
x% = 10
y% = 68
xtwo% = 230
ytwo% = 68

'********THIS IS THE MAIN LOOP**************
nextround:
x% = 10
xtwo% = 230
poneh% = 100
ptwoh% = 100
a% = 0
b% = 0

'********THIS CHECKS TO SEE IF ANYONE HAS WON YET, THAT IS TWO ROUNDS*******
IF ponewin% = 2 THEN GOTO endonewin
IF ptwowin% = 2 THEN GOTO endtwowin

'********THIS DISPLAY THE ROUNDS********************************************
roundsplayed% = roundsplayed% + 1
'smalltune
IF roundsplayed% = 1 THEN : CLS : delay 7: graphics: energybar: COLOR 14: LOCATE 5, 17: PRINT "Round 1": delay 20: GOTO abba: END

IF roundsplayed% = 2 THEN : CLS : delay 7: graphics: energybar: COLOR 14: LOCATE 5, 17: PRINT "Round 2": delay 20: GOTO abba: END

IF roundsplayed% = 3 THEN : CLS : delay 7: graphics: energybar: COLOR 14: LOCATE 5, 17: PRINT "Round 3": delay 20: GOTO abba: END

abba:
CLS

IF ponewin% = 2 THEN GOTO endonewin
IF ptwowin% = 2 THEN GOTO endtwowin

'********THIS IS THE LOOP WHICH CONTROLS THE MAIN GAME
DO
DEF SEG = &H40
POKE &H1A, PEEK(&H1C)
energybar
lim1
graphics
controls
LOOP UNTIL poneh% <= 0 OR ptwoh% <= 0

'********THIS CHECKS HOW MANY ROUNDS HAVE BEEN WON AND BY WHOM******
energybar
IF poneh% <= 0 THEN
ptwowin% = ptwowin% + 1: GOTO nextround
ELSEIF ptwoh% <= 0 THEN ponewin% = ponewin% + 1: GOTO nextround
ELSE
GOTO nextround
END IF
END

'*********VICTORY********
endonewin:
delay 15
CLS
COLOR 6
LOCATE 12, 17
PRINT "You win!"
win% = 1
delay 15
GOTO alright

endtwowin:
delay 20
CLS
SELECT CASE kakos%
CASE 1
COLOR 6
LOCATE 12, 15
PRINT "Bruce Lee wins!"
CASE 2
COLOR 6
LOCATE 12, 12
PRINT "Chuck Norris wins!"
CASE 3
COLOR 6
LOCATE 12, 14
PRINT "Mike Tyson wins!"
CASE 4
COLOR 6
LOCATE 12, 13
PRINT "Cliff Booth wins!"
END SELECT

win% = 0
delay 20
GOTO alright
END

alright:
END SUB

SUB fighttwo

roundsplayed% = 0
ponewin% = 0
ptwowin% = 0
x% = 10
y% = 68
xtwo% = 230
ytwo% = 68

nextroundtwo:
x% = 10
xtwo% = 230
poneh% = 100
ptwoh% = 100
a% = 0
b% = 0

'********THIS CHECKS TO SEE IF ANYONE HAS WON YET, THAT IS TWO ROUNDS*******
IF ponewin% = 2 THEN GOTO endonewintwo
IF ptwowin% = 2 THEN GOTO endtwowintwo

'********THIS DISPLAY THE ROUNDS********************************************
roundsplayed% = roundsplayed% + 1
'smalltune
IF roundsplayed% = 1 THEN
CLS : delay 7: graphicstwo: energybartwo: COLOR 14: LOCATE 5, 17: PRINT "Round 1": delay 20: GOTO abbatwo

ELSEIF roundsplayed% = 2 THEN : CLS : delay 7: graphicstwo: energybartwo: COLOR 14: LOCATE 5, 17: PRINT "Round 2": delay 20: GOTO abbatwo

ELSEIF roundsplayed% = 3 THEN : CLS : delay 7: graphicstwo: energybartwo: COLOR 14: LOCATE 5, 17: PRINT "Round 3": delay 20: GOTO abbatwo

ELSE GOTO abbatwo
END IF

abbatwo:
CLS

IF ponewin% = 2 THEN GOTO endonewintwo
IF ptwowin% = 2 THEN GOTO endtwowintwo

'********THIS IS THE LOOP WHICH CONTROLS THE MAIN GAME
DO
DEF SEG = &H40
POKE &H1A, PEEK(&H1C)
energybartwo
lim1
graphicstwo
controlstwo
LOOP UNTIL poneh% <= 0 OR ptwoh% <= 0

energybartwo
IF poneh% <= 0 THEN ptwowin% = ptwowin% + 1: GOTO nextroundtwo
IF ptwoh% <= 0 THEN ponewin% = ponewin% + 1: GOTO nextroundtwo
END

endonewintwo:
delay 15
CLS
COLOR 6
LOCATE 12, 14
PRINT "Player one wins!"
delay 15
CALL menu

endtwowintwo:
delay 20
CLS
COLOR 6
LOCATE 12, 14
PRINT "Player two wins!"
delay 20
CALL menu
END

END SUB

SUB gameover
CLS
COLOR 14
LOCATE 12, 17
PRINT "GAME OVER"
delay 30
CALL menu

END SUB

SUB graphics

SELECT CASE player%

CASE 1
IF playerblock% = 1 THEN
PUT (x%, y%), brucebl, PSET: GOTO p2
ELSEIF ani% = 0 THEN
PUT (x%, y%), bruce, PSET: GOTO p2
ELSEIF ani% = 1 THEN PUT (x%, y%), brucew, PSET: GOTO p2
ELSE
PUT (x%, y%), bruce, PSET: GOTO p2
END IF

CASE 2
IF playerblock% = 1 THEN
PUT (x%, y%), chuckbl, PSET: GOTO p2
ELSEIF ani% = 0 THEN
PUT (x%, y%), chuck, PSET: GOTO p2
ELSEIF ani% = 1 THEN PUT (x%, y%), chuckw, PSET: GOTO p2
ELSE
PUT (x%, y%), chuck, PSET: GOTO p2
END IF

CASE 3
IF playerblock% = 1 THEN
PUT (x%, y%), mikebl, PSET: GOTO p2
ELSEIF ani% = 0 THEN
PUT (x%, y%), mike, PSET: GOTO p2
ELSEIF ani% = 1 THEN PUT (x%, y%), mikew, PSET: GOTO p2
ELSE
PUT (x%, y%), mike, PSET: GOTO p2
END IF

END SELECT

p2:

SELECT CASE kakos%

CASE 1
IF kakosblock% = 1 THEN
PUT (xtwo%, ytwo%), obrucebl, PSET: GOTO endo
ELSEIF anitwo% = 0 THEN
PUT (xtwo%, ytwo%), obruce, PSET: GOTO endo
ELSEIF anitwo% = 1 THEN PUT (xtwo%, ytwo%), obrucew, PSET: GOTO endo
ELSE
PUT (xtwo%, ytwo%), obruce, PSET: GOTO endo
END IF

CASE 2
IF kakosblock% = 1 THEN
PUT (xtwo%, ytwo%), ochuckbl, PSET: GOTO endo
ELSEIF anitwo% = 0 THEN
PUT (xtwo%, ytwo%), ochuck, PSET: GOTO endo
ELSEIF anitwo% = 1 THEN PUT (xtwo%, ytwo%), ochuckw, PSET: GOTO endo
ELSE
PUT (xtwo%, ytwo%), ochuck, PSET: GOTO endo
END IF

CASE 3
IF kakosblock% = 1 THEN
PUT (xtwo%, ytwo%), omikebl, PSET: GOTO endo
ELSEIF anitwo% = 0 THEN
PUT (xtwo%, ytwo%), omike, PSET: GOTO endo
ELSEIF anitwo% = 1 THEN PUT (xtwo%, ytwo%), omikew, PSET: GOTO endo
ELSE
PUT (xtwo%, ytwo%), omike, PSET: GOTO endo
END IF

CASE 4
IF kakosblock% = 1 THEN
PUT (xtwo%, ytwo%), ocliff, PSET: GOTO endo
ELSEIF anitwo% = 0 THEN
PUT (xtwo%, ytwo%), ocliff, PSET: GOTO endo
ELSEIF anitwo% = 1 THEN PUT (xtwo%, ytwo%), ocliffw, PSET: GOTO endo
ELSE
PUT (xtwo%, ytwo%), ocliff, PSET: GOTO endo
END IF

END SELECT

endo:
END SUB

SUB graphicstwo

SELECT CASE player%

CASE 1
IF playerblock% = 1 THEN
PUT (x%, y%), brucebl, PSET: GOTO p4
ELSEIF ani% = 0 THEN
PUT (x%, y%), bruce, PSET: GOTO p4
ELSEIF ani% = 1 THEN PUT (x%, y%), brucew, PSET: GOTO p4
ELSE
PUT (x%, y%), bruce, PSET: GOTO p4
END IF

CASE 2
IF playerblock% = 1 THEN
PUT (x%, y%), chuckbl, PSET: GOTO p4
ELSEIF ani% = 0 THEN
PUT (x%, y%), chuck, PSET: GOTO p4
ELSEIF ani% = 1 THEN PUT (x%, y%), chuckw, PSET: GOTO p4
ELSE
PUT (x%, y%), chuck, PSET: GOTO p4
END IF

CASE 3
IF playerblock% = 1 THEN
PUT (x%, y%), mikebl, PSET: GOTO p4
ELSEIF ani% = 0 THEN
PUT (x%, y%), mike, PSET: GOTO p4
ELSEIF ani% = 1 THEN PUT (x%, y%), mikew, PSET: GOTO p4
ELSE
PUT (x%, y%), mike, PSET: GOTO p4
END IF

END SELECT

p4:

SELECT CASE playertwo%

CASE 1
IF playertwoblock% = 1 THEN
PUT (xtwo%, ytwo%), obrucebl, PSET: GOTO p5
ELSEIF anitwo% = 0 THEN
PUT (xtwo%, ytwo%), obruce, PSET: GOTO p5
ELSEIF anitwo% = 1 THEN PUT (xtwo%, ytwo%), obrucew, PSET: GOTO p5
ELSE
PUT (xtwo%, ytwo%), obruce, PSET: GOTO p5
END IF

CASE 2
IF playertwoblock% = 1 THEN
PUT (xtwo%, ytwo%), ochuckbl, PSET: GOTO p5
ELSEIF anitwo% = 0 THEN
PUT (xtwo%, ytwo%), ochuck, PSET: GOTO p5
ELSEIF anitwo% = 1 THEN PUT (xtwo%, ytwo%), ochuckw, PSET: GOTO p5
ELSE
PUT (xtwo%, ytwo%), ochuck, PSET: GOTO p5
END IF

CASE 3
IF playertwoblock% = 1 THEN
PUT (xtwo%, ytwo%), omikebl, PSET: GOTO p5
ELSEIF anitwo% = 0 THEN
PUT (xtwo%, ytwo%), omike, PSET: GOTO p5
ELSEIF anitwo% = 1 THEN PUT (xtwo%, ytwo%), omikew, PSET: GOTO p5
ELSE
PUT (xtwo%, ytwo%), omike, PSET: GOTO p5
END IF

CASE 4
IF playertwoblock% = 1 THEN
PUT (xtwo%, ytwo%), ocliff, PSET: GOTO p5
ELSEIF anitwo% = 0 THEN
PUT (xtwo%, ytwo%), ocliff, PSET: GOTO p5
ELSEIF anitwo% = 1 THEN PUT (xtwo%, ytwo%), ocliffw, PSET: GOTO p5
ELSE
PUT (xtwo%, ytwo%), ocliff, PSET: GOTO p5
END IF

END SELECT

p5:
END SUB

SUB intro
CLS
SCREEN 13
CLS
COLOR 6
LOCATE 12, 10
PRINT "Aggelos Mavros presents"
delay 90
CLS
delay 20

COLOR 6
LOCATE 12, 4
PRINT "A Game written in 2019 for MS-DOS."
delay 90
CLS
PLAY "MB O2 C3 < B3 A2 > C3 D3 E2 C3 < B3 A2 > C3 D3 < A2"

PUT (105, 40), tite, PSET

COLOR 7
LOCATE 19, 18
PRINT "Ver 1.0"
delay 60

END SUB

SUB kakoshurt

IF xtwo% >= 230 THEN xtwo% = 230

SELECT CASE kakos%

CASE 1
PUT (xtwo%, ytwo%), obruceh, PSET: delay 2: GOTO finitos

CASE 2
PUT (xtwo%, ytwo%), ochuckh, PSET: delay 2: GOTO finitos

CASE 3
PUT (xtwo%, ytwo%), omikeh, PSET: delay 2: GOTO finitos

CASE 4
PUT (xtwo%, ytwo%), ocliffh, PSET: delay 2: GOTO finitos

END SELECT

finitos:
END SUB

SUB kakoshurt3

IF xtwo% >= 230 THEN xtwo% = 230

SELECT CASE playertwo%

CASE 1
PUT (xtwo%, ytwo%), obruceh, PSET: delay 2: GOTO finitosla

CASE 2
PUT (xtwo%, ytwo%), ochuckh, PSET: delay 2: GOTO finitosla

CASE 3
PUT (xtwo%, ytwo%), omikeh, PSET: delay 2: GOTO finitosla

END SELECT

finitosla:
END SUB

SUB kakoshurttwo

IF x% <= 10 THEN x% = 10

SELECT CASE player%

CASE 1
PUT (x%, y%), bruceh, PSET: delay 2: GOTO finitos2

CASE 2
PUT (x%, y%), chuckh, PSET: delay 2: GOTO finitos2

CASE 3
PUT (x%, y%), mikeh, PSET: delay 2: GOTO finitos2

END SELECT

finitos2:
END SUB

SUB lim1
IF x% <= 10 THEN x% = 10
IF xtwo% <= 50 THEN xtwo% = 50
IF xtwo% >= 235 THEN xtwo% = 230
IF x% >= 190 THEN x% = 190

'IF xtwo% - x% <= 50 then xtwo% - x% = 50
'IF xtwo% - x% <= 15 AND x% <= 10 THEN x% = 10 and xtwo% = xtwo% + 5
'IF xtwo% - x% <= 15 AND xtwo% < 230 THEN xtwo% = xtwo% + 3 and x% = x% - 3
'IF xtwo% - x% <= 15 AND x% > 10 THEN x% = x% - 3 and xtwo% = xtwo% + 3

END SUB

SUB limx
IF xtwo% - x% <= 50 THEN x% = x% - 5
END SUB

SUB limy
IF xtwo% - x% <= 50 THEN xtwo% = xtwo% + 5
END SUB

SUB menu
CLS

COLOR 14: LOCATE 4, 10: PRINT "LEGENDS NEVER DIE - 1.0"
COLOR 7: LOCATE 6, 10: PRINT "------ MAIN MENU ------"
COLOR 6: LOCATE 10, 13: PRINT "(I)ntro"
COLOR 6: LOCATE 12, 13: PRINT "(S)ingle Player"
COLOR 6: LOCATE 14, 13: PRINT "(T)wo Players"
COLOR 6: LOCATE 16, 13: PRINT "(D)ifficulty Level"
COLOR 6: LOCATE 18, 13: PRINT "(C)ontrols"
COLOR 6: LOCATE 20, 13: PRINT "(Q)uit to DOS"

DO
SELECT CASE INKEY$
CASE CHR$(73): CALL newintro
CASE CHR$(105): CALL newintro
CASE CHR$(83): CALL menu2
CASE CHR$(115): CALL menu2

CASE CHR$(116): CALL twoplayers
CASE CHR$(84): CALL twoplayers

CASE CHR$(68): CALL menudif
CASE CHR$(100): CALL menudif

CASE CHR$(67): CALL seecontrols
CASE CHR$(99): CALL seecontrols

CASE CHR$(81): END
CASE CHR$(113): END
END SELECT
LOOP

END SUB

SUB menu2
CLS
COLOR 14: LOCATE 5, 12: PRINT "Choose Your Player:"
COLOR 6: LOCATE 9, 12: PRINT "(1) Bruce Lee"
COLOR 6: LOCATE 11, 12: PRINT "(2) Chuck Norris"
COLOR 6: LOCATE 13, 12: PRINT "(3) Mike Tyson"
COLOR 7: LOCATE 17, 12: PRINT "(B)ack to Main Menu"

DO
SELECT CASE INKEY$

CASE CHR$(33): CALL brucelee
CASE CHR$(49): CALL brucelee

CASE CHR$(64): CALL chucknorris
CASE CHR$(50): CALL chucknorris

CASE CHR$(35): CALL miketyson
CASE CHR$(51): CALL miketyson

CASE CHR$(66): CALL menu
CASE CHR$(98): CALL menu

END SELECT
LOOP

END SUB

SUB menudif
CLS
COLOR 14: LOCATE 7, 10: PRINT "Choose Difficulty Level:"
COLOR 6: LOCATE 11, 15: PRINT "(1) Easy"
COLOR 6: LOCATE 13, 15: PRINT "(2) Hard"
COLOR 7: LOCATE 18, 12: PRINT "(B)ack to main menu"

DO
SELECT CASE INKEY$

CASE CHR$(33): difficulty% = 1: CLS : COLOR 14: LOCATE 13, 8: PRINT "Difficulty Level Set To EASY": delay 10: CALL menu
CASE CHR$(49): difficulty% = 1: CLS : COLOR 14: LOCATE 13, 8: PRINT "Difficulty Level Set To EASY": delay 10: CALL menu
CASE CHR$(64): difficulty% = 2: CLS : COLOR 14: LOCATE 13, 8: PRINT "Difficulty Level Set To HARD": delay 10: CALL menu
CASE CHR$(50): difficulty% = 2: CLS : COLOR 14: LOCATE 13, 8: PRINT "Difficulty Level Set To HARD": delay 10: CALL menu

CASE CHR$(66): CALL menu
CASE CHR$(98): CALL menu

END SELECT
LOOP

END SUB

SUB miketyson
player% = 3
CALL oneplayer
END SUB

SUB newintro

CLS

d% = 10

v% = 215

delay 15

LOCATE 2, 2: PRINT "Once Upon A Time In Hollywood.."
delay 60

LOCATE 3, 2: PRINT "A fatwitted director faked Bruce Lee's"
LOCATE 4, 2: PRINT "defeat."

PUT (v%, 98), ocliff, PSET

delay 80

LOCATE 6, 2: PRINT "That brought Bruce back from the Dead."

delay 10

PUT (d%, 98), bruce, PSET

delay 60
LOCATE 8, 2: PRINT "It's time to proove for once more.."

delay 50
LOCATE 9, 2: PRINT "who the undisputed legend is!"

o% = 0
DO
d% = d% + 5
v% = v% - 5
IF o = 0 THEN o = 1: GOTO aye
IF o = 1 THEN o = 0: GOTO aye

aye:
IF o = 0 THEN PUT (d%, 98), bruce, PSET
IF o = 1 THEN PUT (d%, 98), brucew, PSET
IF o = 0 THEN PUT (v%, 98), ocliff, PSET
IF o = 1 THEN PUT (v%, 98), ocliffw, PSET
delay 2
LOOP UNTIL d% >= 80
DO
LOOP UNTIL v% <= 165

PUT (130, 125), hit1, PSET
SOUND 128, 1
delay 20

menu
END SUB

SUB oneplayer
CLS

background% = 1
gyros% = 1
screent
fight
SELECT CASE win%

CASE 1
GOTO nextfight
END

CASE 0
gameover
END
END SELECT

nextfight:
background% = 2
gyros% = 2
screent
fight

SELECT CASE win%

CASE 1
GOTO nextusfight
END

CASE 0
gameover
END
END SELECT

nextusfight:

background% = 2
gyros% = 3
screent
fight

SELECT CASE win%

CASE 1
GOTO win
END

CASE 0
gameover
END
END SELECT

win:
CLS
COLOR 6: LOCATE 11, 12: PRINT "Congratulations!!!"
PLAY "MB O2 C3 < B3 A2 > C3 D3 E2 C3 < B3 A2 > C3 D3 < A2"
delay 20
COLOR 6: LOCATE 14, 6: PRINT "You eliminated all your enemies!"
delay 20

CLS
delay 10
COLOR 14: LOCATE 13, 7: PRINT "You are the undisputed legend!"
delay 30
menu
END
END SUB

SUB screent
smalltune
SELECT CASE player%

CASE 1
CLS
PUT (50, 50), bruce, PSET
COLOR 6
LOCATE 19, 8
PRINT "BRUCE LEE"

CASE 2
CLS
PUT (50, 50), chuck, PSET
COLOR 6
LOCATE 19, 8
PRINT "CHUCK NORRIS"

CASE 3
CLS
PUT (50, 50), mike, PSET
COLOR 6
LOCATE 19, 8
PRINT "MIKE TYSON"

END SELECT


SELECT CASE gyros%

CASE 1

IF player% = 2 THEN
PUT (190, 50), obruce, PSET
COLOR 6
LOCATE 19, 24
PRINT "BRUCE LEE"
kakos% = 1

ELSE
PUT (190, 50), ochuck, PSET
COLOR 6
LOCATE 19, 24
PRINT "CHUCK NORRIS"
kakos% = 2
END IF

COLOR 14
LOCATE 5, 17
PRINT "FIGHT ONE"

GOTO haya:

CASE 2

IF player% = 3 THEN
PUT (190, 50), obruce, PSET
COLOR 6
LOCATE 19, 24
PRINT "BRUCE LEE"
kakos% = 1

ELSE
PUT (190, 50), omike, PSET
COLOR 6
LOCATE 19, 24
PRINT "MIKE TYSON"
kakos% = 3
END IF

COLOR 14
LOCATE 5, 17
PRINT "FIGHT TWO"
GOTO haya:

CASE 3

PUT (190, 50), ocliff, PSET
COLOR 6
LOCATE 19, 24
PRINT "CLIFF BOOTH"
kakos% = 4

COLOR 14
LOCATE 5, 15
PRINT "FIGHT THREE"
GOTO haya:

haya:
delay 30
END SELECT
END SUB

SUB screenttwo
smalltune
SELECT CASE player%

CASE 1
CLS
PUT (50, 50), bruce, PSET
COLOR 6
LOCATE 19, 8
PRINT "BRUCE LEE"

CASE 2
CLS
PUT (50, 50), chuck, PSET
COLOR 6
LOCATE 19, 8
PRINT "CHUCK NORRIS"

CASE 3
CLS
PUT (50, 50), mike, PSET
COLOR 6
LOCATE 19, 8
PRINT "MIKE TYSON"

END SELECT


SELECT CASE playertwo%

CASE 1
PUT (190, 50), obruce, PSET
COLOR 6
LOCATE 19, 24
PRINT "BRUCE LEE"

CASE 2
PUT (190, 50), ochuck, PSET
COLOR 6
LOCATE 19, 24
PRINT "CHUCK NORRIS"

CASE 3
PUT (190, 50), omike, PSET
COLOR 6
LOCATE 19, 24
PRINT "MIKE TYSON"

END SELECT

COLOR 14
LOCATE 5, 13
PRINT "TWO PLAYERS FIGHT"

delay 30
END SUB

SUB seecontrols
CLS

COLOR 14: LOCATE 2, 2: PRINT "PLAYER ONE CONTROLS"
COLOR 6: LOCATE 4, 2: PRINT "MOVE LEFT = Left Arrow"
COLOR 6: LOCATE 5, 2: PRINT "MOVE RIGHT = Right Arrow"
COLOR 6: LOCATE 6, 2: PRINT "PUNCH = Spacebar"
COLOR 6: LOCATE 7, 2: PRINT "KICK = K Button"
COLOR 6: LOCATE 8, 2: PRINT "BLOCK = B Button"

COLOR 14: LOCATE 10, 2: PRINT "PLAYER TWO CONTROLS"
COLOR 6: LOCATE 12, 2: PRINT "MOVE LEFT = A Button"
COLOR 6: LOCATE 13, 2: PRINT "MOVE RIGHT = D Button"
COLOR 6: LOCATE 14, 2: PRINT "PUNCH = Tab"
COLOR 6: LOCATE 15, 2: PRINT "KICK = ~ Button"
COLOR 6: LOCATE 16, 2: PRINT "BLOCK = 1 Button"

SLEEP
CALL menu
END SUB

SUB smalltune
PLAY "MB O3 c3 D3 < A2"
END SUB

DEFSNG A-Z
SUB sounds
END SUB

DEFINT A-Z
SUB twoplayers
CLS
COLOR 14: LOCATE 5, 12: PRINT "Choose Player One:"
COLOR 6: LOCATE 9, 12: PRINT "(1) Bruce Lee"
COLOR 6: LOCATE 11, 12: PRINT "(2) Chuck Norris"
COLOR 6: LOCATE 13, 12: PRINT "(3) Mike Tyson"
COLOR 7: LOCATE 17, 12: PRINT "(B)ack to main menu"

DO
SELECT CASE INKEY$

CASE CHR$(33): player% = 1: CLS : COLOR 14: LOCATE 13, 7: PRINT "Player One Will be Bruce Lee": delay 15: CALL twoplayerstwo
CASE CHR$(49): player% = 1: CLS : COLOR 14: LOCATE 13, 7: PRINT "Player One Will be Bruce Lee": delay 15: CALL twoplayerstwo

CASE CHR$(64): player% = 2: CLS : COLOR 14: LOCATE 13, 5: PRINT "Player One Will be Chuck Norris": delay 15: CALL twoplayerstwo
CASE CHR$(50): player% = 2: CLS : COLOR 14: LOCATE 13, 5: PRINT "Player One Will be Chuck Norris": delay 15: CALL twoplayerstwo

CASE CHR$(35): player% = 3: CLS : COLOR 14: LOCATE 13, 6: PRINT "Player One Will be Mike Tyson": delay 15: CALL twoplayerstwo
CASE CHR$(51): player% = 3: CLS : COLOR 14: LOCATE 13, 6: PRINT "Player One Will be Mike Tyson": delay 15: CALL twoplayerstwo

CASE CHR$(66): CALL menu
CASE CHR$(98): CALL menu

END SELECT
LOOP

END SUB

SUB twoplayersgame
CLS
background% = 1
screenttwo
delay 50
fighttwo
END SUB

SUB twoplayerstwo
CLS
COLOR 14: LOCATE 5, 12: PRINT "Choose Player Two:"
COLOR 6: LOCATE 9, 12: PRINT "(1) Bruce Lee"
COLOR 6: LOCATE 11, 12: PRINT "(2) Chuck Norris"
COLOR 6: LOCATE 13, 12: PRINT "(3) Mike Tyson"
COLOR 7: LOCATE 17, 12: PRINT "(B)ack to main menu"

DO
SELECT CASE INKEY$

CASE CHR$(33): playertwo% = 1: CLS : COLOR 14: LOCATE 13, 7: PRINT "Player Two Will be Bruce Lee": delay 15: CALL twoplayersgame
CASE CHR$(49): playertwo% = 1: CLS : COLOR 14: LOCATE 13, 7: PRINT "Player Two Will be Bruce Lee": delay 15: CALL twoplayersgame

CASE CHR$(64): playertwo% = 2: CLS : COLOR 14: LOCATE 13, 5: PRINT "Player Two Will be Chuck Norris": delay 15: CALL twoplayersgame
CASE CHR$(50): playertwo% = 2: CLS : COLOR 14: LOCATE 13, 5: PRINT "Player Two Will be Chuck Norris": delay 15: CALL twoplayersgame

CASE CHR$(35): playertwo% = 3: CLS : COLOR 14: LOCATE 13, 6: PRINT "Player Two Will be Mike Tyson": delay 15: CALL twoplayersgame
CASE CHR$(51): playertwo% = 3: CLS : COLOR 14: LOCATE 13, 6: PRINT "Player Two Will be Mike Tyson": delay 15: CALL twoplayersgame

CASE CHR$(66): CALL menu
CASE CHR$(98): CALL menu

END SELECT
LOOP

END SUB

