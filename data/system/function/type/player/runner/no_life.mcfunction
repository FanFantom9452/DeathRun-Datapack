#Made By Fan_Fan_tom
team join do_not_finish @s
gamemode spectator @s
tellraw @a [{selector:"@s"},{text:" 已用盡所有重生次數 未完成",color:"red"}]

title @s times 0 35 5
title @s subtitle [{text:"已用盡所有重生次數",color:"yellow"}]
title @s title [{text:"未完成",color:"red"}]
playsound entity.villager.death master @s ~ ~ ~ 1 1 1

function system:type/player/check_all_player_finish