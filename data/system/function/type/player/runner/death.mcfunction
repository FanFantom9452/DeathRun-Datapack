#Made By Fan_Fan_tom



execute if score @s life matches 1.. run function system:type/player/runner/remove_life
execute if score @s life matches 0 run function system:type/player/runner/no_life

scoreboard players set @s checkpoint.cd 10

scoreboard players add @s one_round_death 1
scoreboard players add @s total.death 1
scoreboard players reset @s death