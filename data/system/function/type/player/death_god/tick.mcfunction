#Made By Fan_Fan_tom
#死神加速
effect give @s minecraft:speed 1 19 true
effect give @s resistance 1 4 true
attribute @s scale base set 1.5
#陷阱系統 - 給予物品
execute store result score @s item.feather.count run clear @s feather 0
execute if score @s item.feather.count matches 0 run function system:type/item/death_god/trap_item/feather
execute store result score @s item.spyglass.count run clear @s spyglass 0
execute if score @s item.spyglass.count matches 0 run function system:type/item/death_god/trap_item/spyglass
#沒有分數的話 就是冷卻好
execute unless score @n[type=marker,tag=trap_give_item_point,distance=..4] trap_timer matches -2147483648..2147483647 run function system:type/item/death_god/trap_item/can_use
#有分數就是還沒冷卻好
execute if score @n[type=marker,tag=trap_give_item_point,distance=..4] trap_timer matches 1.. run function system:type/item/death_god/trap_item/cooldown
#離開陷阱區
execute unless entity @e[type=marker,tag=trap_give_item_point,distance=..4] run function system:type/item/death_god/trap_item/clear

#手持望遠鏡
execute if items entity @s weapon.* spyglass run effect give @a[team=runner,distance=..100] glowing 1 0 true
