#Made By Fan_Fan_tom
function system:type/finish/stop_player

title @a times 0 100 0
title @a subtitle [{text:"場上已無逃亡者",color:"yellow"}]
title @a title [{text:"遊戲結束",color:"aqua"}]
tellraw @a [{text:"場上已無逃亡者",color:"yellow"}]
execute as @a at @s run playsound block.beacon.activate master @s ~ ~ ~ 1 1 1

schedule function system:type/finish/teleport_to_result_arena 5s