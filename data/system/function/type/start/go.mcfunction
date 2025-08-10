#Made By Fan_Fan_tom

#Map
function system:type/map/auto_choose_go with storage system:status


execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
title @a times 0 20 0
title @a subtitle [{text:"遊戲開始",color:"aqua"}]
title @a title [{text:" ",color:"white"}]

bossbar set minecraft:time players @a
scoreboard players set 剩餘時間 list 300
execute store result bossbar minecraft:time max run scoreboard players get 剩餘時間 list
#用時多久 啟動
scoreboard players set timer status 1

function system:type/time_left