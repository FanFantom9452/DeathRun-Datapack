#Made By Fan_Fan_tom
team join do_not_finish @a[team=runner,scores={life=1..},gamemode=adventure]
function system:type/finish/stop_player

title @a times 0 100 0
title @a subtitle [{text:"時間到",color:"yellow"}]
title @a title [{text:"遊戲結束",color:"red"}]
execute as @a at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 1 1 1


schedule function system:type/finish/teleport_to_result_arena 5s