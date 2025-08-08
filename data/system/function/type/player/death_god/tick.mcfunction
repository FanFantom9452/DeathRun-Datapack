#Made By Fan_Fan_tom
#死神加速
effect give @s minecraft:speed 1 19 true
effect give @s resistance 1 4 true
attribute @s scale base set 1.5
#陷阱系統 - 給予物品
function system:type/item/death_god/trap_item/spyglass
#沒有分數的話 就是冷卻好
execute unless score @n[type=marker,tag=trap_give_item_point,distance=..4] trap_timer matches -2147483648..2147483647 run function system:type/item/death_god/trap_item/can_use
#有分數就是還沒冷卻好
execute if score @n[type=marker,tag=trap_give_item_point,distance=..4] trap_timer matches 1.. run function system:type/item/death_god/trap_item/cooldown
#離開陷阱區
execute if entity @e[type=marker,tag=trap_give_item_point,distance=4..6] run function system:type/item/death_god/trap_item/clear


#死神傳送門 A to B
execute if block ~ ~ ~ nether_portal if entity @e[type=marker,tag=death_god_nether_teleport_door_a,distance=..5] run tp @s @n[type=marker,tag=death_god_nether_teleport_door_b,distance=..150]

#死神傳送門 B to A
execute if block ~ ~ ~ nether_portal if entity @e[type=marker,tag=death_god_nether_teleport_door_b,distance=..5] run tp @s @n[type=marker,tag=death_god_nether_teleport_door_a,distance=..150]