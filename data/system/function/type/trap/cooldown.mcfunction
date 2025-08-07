#Made By Fan_Fan_tom
scoreboard players remove @s trap_timer 1
execute if score @s trap_timer matches 1..200 as @e[type=marker,tag=show_glass,distance=..4] at @s run setblock ~ ~ ~ yellow_stained_glass
execute if score @s trap_timer matches 201.. as @e[type=marker,tag=show_glass,distance=..4] at @s run setblock ~ ~ ~ red_stained_glass


