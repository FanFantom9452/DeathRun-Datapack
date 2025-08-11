#Made By Fan_Fan_tom
$scoreboard players $(op) map status 1
execute if score map status matches ..0 run scoreboard players set map status 3
execute if score map status matches 4.. run scoreboard players set map status 1
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
tellraw @a [{text:"Map "},{score:{name:"map",objective:"status"}}]