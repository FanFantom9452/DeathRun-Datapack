#Made By Fan_Fan_tom
#新進入玩家加入遊戲
execute if entity @s[team=] run function system:type/player/init

#所有玩家狀態效果
effect give @s saturation infinite 1 true
effect give @s night_vision infinite 1 true
effect give @s[team=waiting] regeneration 1 9 true

#死神加速
effect give @s[team=death_god] minecraft:speed 1 19 true
attribute @s[team=!death_god] scale base reset
attribute @s[team=death_god] scale base set 1.5


#碰到傳送門 設置重生點
execute if entity @s[gamemode=adventure] if block ~ ~ ~ minecraft:nether_portal run spawnpoint @s ~ ~ ~ ~




#碰到水死亡
execute if entity @s[gamemode=adventure] if block ~ ~ ~ water if biome ~ ~ ~ minecraft:the_end run damage @s 100 minecraft:drown



#陷阱系統
#沒有分數的話 就是冷卻好
execute unless score @n[type=marker,tag=trap_give_item_point,distance=..4] trap_timer matches -2147483648..2147483647 run function system:type/item/death_god/trap_item/can_use
#有分數就是還沒冷卻好
execute if score @n[type=marker,tag=trap_give_item_point,distance=..4] trap_timer matches 1.. run function system:type/item/death_god/trap_item/cooldown
#離開陷阱區
execute if entity @e[type=marker,tag=trap_give_item_point,distance=4..6] run function system:type/item/death_god/trap_item/clear


#死神傳送門 A to B
execute if entity @s[team=death_god] if block ~ ~ ~ nether_portal if entity @e[type=marker,tag=death_god_nether_teleport_door_a,distance=..5] run tp @s @n[type=marker,tag=death_god_nether_teleport_door_b,distance=..150]

#死神傳送門 B to A
execute if entity @s[team=death_god] if block ~ ~ ~ nether_portal if entity @e[type=marker,tag=death_god_nether_teleport_door_b,distance=..5] run tp @s @n[type=marker,tag=death_god_nether_teleport_door_a,distance=..150]