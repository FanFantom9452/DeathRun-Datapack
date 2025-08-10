#Made By Fan_Fan_tom


execute if entity @s[tag=death_god_nether_teleport_door_a] run particle dust{color:16777215,scale:2f} ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]
execute if entity @s[tag=death_god_nether_teleport_door_b] run particle dust{color:0,scale:2f} ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]





#箭矢調整傳送角度
execute if entity @s[tag=death_god_nether_teleport_door_a] if entity @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..2] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=death_god_nether_teleport_door_a] if entity @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..2] run tp @p @s

execute if entity @s[tag=death_god_nether_teleport_door_b] if entity @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..2] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=death_god_nether_teleport_door_b] if entity @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..2] run tp @p @s

#調整傳送門ID
title @a[distance=..2,gamemode=creative] actionbar [{text:"傳送門ID : "},{score:{name:"@s",objective:"teleport_point.id"},color:"yellow",bold:true,underlined:true},{text:" | (相同的傳送門ID才會傳送)",color:"gray"}]
execute if entity @e[type=item,nbt={Item:{id:"minecraft:green_terracotta"}},distance=..2] run scoreboard players add @s teleport_point.id 1
execute if entity @e[type=item,nbt={Item:{id:"minecraft:red_terracotta"}},distance=..2] run scoreboard players remove @s teleport_point.id 1



#remove
execute if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:bedrock"}}] run kill @s