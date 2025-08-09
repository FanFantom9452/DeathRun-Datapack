#Made By Fan_Fan_tom
scoreboard players add @s timer.tick 5
execute if score @s timer.tick matches 100.. run scoreboard players add @s timer.second 1
execute if score @s timer.tick matches 100.. run scoreboard players set @s timer.tick 0

execute if score @s timer.second matches 60.. run scoreboard players add @s timer.min 1
execute if score @s timer.second matches 60.. run scoreboard players set @s timer.second 0

