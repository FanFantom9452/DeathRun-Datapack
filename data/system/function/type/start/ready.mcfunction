#Made By Fan_Fan_tom
tag @a add playing
gamemode adventure @a[team=runner]
gamemode adventure @a[team=death_god]
execute as @a[team=death_god] run function system:type/item/death_god/trap_item/clear
execute as @a[team=death_god] run function system:type/item/death_god/trap_item/spyglass
effect give @a minecraft:instant_health 1 10 true

#Map
execute store result storage system:status map int 1 run scoreboard players get map status
function system:type/map/auto_choose_ready with storage system:status
#重設門
function system:type/map/auto_choose_reset_start_door with storage system:status

advancement revoke @a everything

execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1
title @a times 20 100 20
title @a subtitle [{text:"遊戲即將開始",color:"red"}]
title @a title [{text:"準備好...",color:"yellow"}]
tellraw @s [{text:"您目前遊玩的是免費版本",color:"green"},{text:"\n"},{text:"想購買DLC版本請加入我們的Discord了解",color:"yellow"},{text:"【點我加入】",color:"aqua",bold:true,underlined:true,click_event:{action:"open_url",url:"https://discord.gg/HCarvbQ"}}]
scoreboard players reset @a dash_front.cd
scoreboard players reset @a dash_left.cd
scoreboard players reset @a dash_right.cd
scoreboard players reset * death
scoreboard players reset * one_round_death
scoreboard players set @a[team=runner] one_round_death 0
scoreboard players add @a[team=runner] total.games 1
clear @a
execute as @a[team=runner] run scoreboard players operation @s life = life status
#重製排名
scoreboard players reset * rank
scoreboard players set @a[team=runner] rank -9487945
scoreboard players set rank rank 1

#開始遊戲狀態
scoreboard players set status status 1

schedule function system:type/start/5 10s