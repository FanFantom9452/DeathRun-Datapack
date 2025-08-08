#Made By Fan_Fan_tom
attribute @s block_interaction_range base set 0
#碰到傳送門 設置重生點
execute if block ~ ~ ~ minecraft:nether_portal run spawnpoint @s ~ ~ ~ ~
#dash 物品
execute if score @s dash_front.cd matches 1.. run scoreboard players remove @s dash_front.cd 1
execute if score @s dash_left.cd matches 1.. run scoreboard players remove @s dash_left.cd 1
execute if score @s dash_right.cd matches 1.. run scoreboard players remove @s dash_right.cd 1
execute if score @s dash_front.cd matches 0 run scoreboard players reset @s dash_front.cd
execute if score @s dash_left.cd matches 0 run scoreboard players reset @s dash_left.cd
execute if score @s dash_right.cd matches 0 run scoreboard players reset @s dash_right.cd
function system:type/item/player/dash_front
function system:type/item/player/dash_left
function system:type/item/player/dash_right
#碰到水死亡
execute if block ~ ~ ~ water if biome ~ ~ ~ minecraft:the_end run damage @s 100 minecraft:drown


#抵達終點
execute if entity @e[type=marker,tag=finish_point,distance=..15] if block ~ ~ ~ end_gateway run function system:type/player/get_finish_point