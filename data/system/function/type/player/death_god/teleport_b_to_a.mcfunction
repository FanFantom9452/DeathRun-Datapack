#Made By Fan_Fan_tom
#copy id
scoreboard players operation tmp teleport_point.id = @n[type=marker,tag=death_god_nether_teleport_door_b,distance=..5] teleport_point.id
#match
execute as @e[type=marker,tag=death_god_nether_teleport_door_a,distance=..500] if score @s teleport_point.id = tmp teleport_point.id run tag @s add target_teleport
#teleport
tp @s @n[type=marker,tag=target_teleport,distance=..500]

tag @e[tag=target_teleport] remove target_teleport