#Made By Fan_Fan_tom

fill 14 87 20 14 82 13 minecraft:white_stained_glass
gamemode adventure @a[team=runner]
gamemode adventure @a[team=death_god]
tp @a[team=runner] 21.15 83 16.99 90 0
spawnpoint @a[team=runner] 21 83 16 90
tp @a[team=death_god] 10 83 8 90 0
spawnpoint @a[team=death_god] 10 83 8 90
execute as @a[team=death_god] run function system:type/item/death_god/trap_item/clear
execute as @a[team=runner] run function system:type/item/player/dash
effect give @a minecraft:instant_health 1 10 true

execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1
title @a times 20 100 20
title @a subtitle [{text:"遊戲即將開始",color:"red"}]
title @a title [{text:"準備好...",color:"yellow"}]

schedule function system:type/start/5 10s