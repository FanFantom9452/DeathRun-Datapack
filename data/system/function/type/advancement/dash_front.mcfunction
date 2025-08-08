#Made By Fan_Fan_tom
advancement revoke @s only system:dash_front

clear @s paper[custom_data~{dash_front:1b}] 1

scoreboard players set $strength player_motion.api.launch 20000
execute rotated ~ 0 run function player_motion:api/launch_looking

scoreboard players set @s dash_front.cd 1200
#禁止同時使用
execute unless score @s dash_left.cd matches -2147483648..2147483647 run scoreboard players set @s dash_left.cd 20
execute unless score @s dash_right.cd matches -2147483648..2147483647 run scoreboard players set @s dash_right.cd 20


particle minecraft:cloud ~ ~ ~ 0 0 0 0.3 10 force @a
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 10 1.5 1