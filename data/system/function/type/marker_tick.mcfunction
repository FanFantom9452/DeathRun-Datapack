#Made By Fan_Fan_tom
#設定陷阱預設秒數
execute if entity @s[tag=trap_give_item_point] run function system:type/trap/tick
#陷阱幾秒後會自動重製
execute if entity @s[tag=trap_reset_point] run function system:type/trap_reset/tick

#debug particle for marker
execute if entity @s[tag=trap_trigger_point] run particle dust{color:16711680,scale:1f} ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]
execute if entity @s[tag=finish_point] run particle dust{color:15335679,scale:1f} ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]
execute if entity @s[tag=firework_rocket] run particle flame ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]
execute if entity @s[tag=death_god_nether_teleport_door_a] run particle dust{color:7799039,scale:2f} ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]
execute if entity @s[tag=death_god_nether_teleport_door_b] run particle dust{color:7799039,scale:2f} ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]

#箭矢調整傳送角度
execute if entity @s[tag=death_god_nether_teleport_door_a] if entity @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..4] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=death_god_nether_teleport_door_a] if entity @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..4] run tp @p @s

execute if entity @s[tag=death_god_nether_teleport_door_b] if entity @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..4] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=death_god_nether_teleport_door_b] if entity @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..4] run tp @p @s
