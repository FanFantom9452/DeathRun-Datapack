#Made By Fan_Fan_tom
#排名
function system:type/player/rank/get
title @s times 10 60 10
title @s subtitle [{text:"抵達終點",color:"yellow"}]
title @s title [{text:"恭喜",color:"green"}]
gamemode spectator @s
tellraw @a [{selector:"@s"},{text:" 抵達終點",color:"yellow"}]
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1



function system:type/player/check_all_player_finish
