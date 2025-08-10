#Made By Fan_Fan_tom
#設定陷阱預設秒數
execute if entity @s[tag=trap_give_item_point] run function system:type/trap/tick
#陷阱幾秒後會自動重製
execute if entity @s[tag=trap_reset_point] run function system:type/trap_reset/tick


execute if entity @s[tag=death_god_teleport] run function system:type/teleport_point/tick

#debug particle for marker
execute if entity @s[tag=trap_trigger_point] run particle dust{color:16711680,scale:1f} ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]
execute if entity @s[tag=finish_point] run particle dust{color:15335679,scale:1f} ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]
execute if entity @s[tag=firework_rocket] run particle flame ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]
execute if entity @s[tag=show_glass] run particle dust{color:12320626,scale:2f} ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]
execute if entity @s[tag=red_disappear_block] run particle dust{color:16745604,scale:0.5f} ~ ~0.5 ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]
execute if entity @s[tag=sea_lantern_block] run particle dust{color:8716281,scale:0.5f} ~ ~0.5 ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]

#remove
execute if entity @s[tag=trap_trigger_point] if entity @n[type=item,nbt={Item:{id:"minecraft:bedrock"}},distance=..2] run kill @s
execute if entity @s[tag=finish_point] if entity @n[type=item,nbt={Item:{id:"minecraft:bedrock"}},distance=..2] run kill @s
execute if entity @s[tag=firework_rocket] if entity @n[type=item,nbt={Item:{id:"minecraft:bedrock"}},distance=..2] run kill @s
execute if entity @s[tag=show_glass] if entity @n[type=item,nbt={Item:{id:"minecraft:bedrock"}},distance=..2] run kill @s
execute if entity @s[tag=red_disappear_block] if entity @n[type=item,nbt={Item:{id:"minecraft:bedrock"}},distance=..2] run kill @s
execute if entity @s[tag=sea_lantern_block] if entity @n[type=item,nbt={Item:{id:"minecraft:bedrock"}},distance=..2] run kill @s


