#Made By Fan_Fan_tom
scoreboard players set @s trap_max_timer 600
scoreboard players reset @s trap_timer

execute as @e[type=marker,tag=show_glass,distance=..4] at @s run setblock ~ ~ ~ lime_stained_glass
