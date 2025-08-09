#Made By Fan_Fan_tom

#玩家類 tick
execute as @a at @s run function system:type/player/tick

#marker運作
execute as @e[type=marker] at @s run function system:type/marker_tick


kill @e[type=item]

schedule function system:type/tick 1t