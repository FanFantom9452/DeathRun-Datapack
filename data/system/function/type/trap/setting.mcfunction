#Made By Fan_Fan_tom
scoreboard players operation tmp trap_max_timer = @s trap_max_timer
scoreboard players operation tmp2 trap_max_timer = @n[type=marker,tag=trap_reset_point,distance=..10] trap_max_timer
scoreboard players set #20 trap_max_timer 20
scoreboard players operation tmp trap_max_timer /= #20 trap_max_timer
scoreboard players operation tmp2 trap_max_timer /= #20 trap_max_timer

title @a[distance=..4,gamemode=creative] actionbar [{text:"陷阱冷卻 : "},{score:{name:"tmp",objective:"trap_max_timer"},color:"yellow",bold:true,underlined:true},{text:" | ",color:"gray"},{text:" 陷阱持續時間 : ",color:"white"},{score:{name:"tmp2",objective:"trap_max_timer"}}]
execute if entity @e[type=item,distance=..4,nbt={Item:{id:"minecraft:green_wool"}}] run scoreboard players add @s trap_max_timer 20
execute if entity @e[type=item,distance=..4,nbt={Item:{id:"minecraft:red_wool"}}] run scoreboard players remove @s trap_max_timer 20

execute if entity @e[type=item,distance=..4,nbt={Item:{id:"minecraft:green_concrete"}}] run scoreboard players add @n[type=marker,tag=trap_reset_point,distance=..10] trap_max_timer 20
execute if entity @e[type=item,distance=..4,nbt={Item:{id:"minecraft:red_concrete"}}] run scoreboard players remove @n[type=marker,tag=trap_reset_point,distance=..10] trap_max_timer 20


#remove
execute if entity @e[type=item,distance=..4,nbt={Item:{id:"minecraft:bedrock"}}] run kill @s