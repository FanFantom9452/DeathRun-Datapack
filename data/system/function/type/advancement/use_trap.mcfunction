#Made By Fan_Fan_tom
advancement revoke @s only system:use_trap

clear @s paper[custom_data~{trap:1b}]

#設置冷卻時間
execute as @n[type=marker,tag=trap_give_item_point,distance=..4] at @s run scoreboard players operation @s trap_timer = @s trap_max_timer
#重製時間
execute as @n[type=marker,tag=trap_reset_point,distance=..10] at @s run scoreboard players operation @s trap_timer = @s trap_max_timer

#觸發
execute as @n[type=marker,tag=trap_trigger_point,distance=..10] at @s unless score @s trap_timer matches -2147483648..2147483647 run setblock ~ ~ ~ redstone_block

