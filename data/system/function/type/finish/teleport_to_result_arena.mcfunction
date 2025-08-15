#Made By Fan_Fan_tom
gamemode adventure @a
clear @a
effect give @a resistance 13 4 true
tp @a -1000 103 -1007 0 0

tp @a[team=1st] -1000 107 -993 180 10
tp @a[team=2nd] -996 106 -994 180 10
tp @a[team=3rd] -1004 105 -994 180 10

tp @a[team=do_not_finish] -1000 98 -999 180 10
#觸發煙火
setblock -1001 88 -1003 minecraft:redstone_block

schedule function system:type/finish/reset 12s