#Made By Fan_Fan_tom
#成就
advancement revoke @s only system:dash_left

#清除
clear @s paper[custom_data~{dash_left:1b}]

#動力
scoreboard players set $strength player_motion.api.launch -13000
execute rotated ~90 0 run function player_motion:api/launch_looking

#設置冷卻
scoreboard players set #20 dash_left.cd 20
scoreboard players operation @s dash_left.cd = all_player_cd dash_left.cd
scoreboard players operation @s dash_left.cd *= #20 dash_left.cd
#禁止同時使用
execute unless score @s dash_front.cd matches -2147483648..2147483647 run scoreboard players set @s dash_front.cd 20
execute unless score @s dash_right.cd matches -2147483648..2147483647 run scoreboard players set @s dash_right.cd 20

#特效
particle minecraft:cloud ~ ~ ~ 0 0 0 0.3 10 force @a[distance=..30]
playsound minecraft:entity.firework_rocket.launch master @a[distance=..30] ~ ~ ~ 10 1.5 1