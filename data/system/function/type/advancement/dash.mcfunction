#Made By Fan_Fan_tom
advancement revoke @s only system:dash

clear @s paper[custom_data~{dash:1b}] 1

scoreboard players set $strength player_motion.api.launch -13000
execute rotated ~ 0 run function player_motion:api/launch_looking