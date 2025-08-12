#Made By Fan_Fan_tom
$scoreboard players $(op) map status 1
execute if score map status matches ..0 run scoreboard players set map status 3
execute if score map status matches 4.. run scoreboard players set map status 1
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1


execute if score map status matches 1 run setblock -1980 103 -1987 minecraft:redstone_block
execute if score map status matches 2 run setblock -1980 103 -1985 minecraft:redstone_block
execute if score map status matches 3 run setblock -1980 103 -1983 minecraft:redstone_block
function system:type/sign/show_map_name