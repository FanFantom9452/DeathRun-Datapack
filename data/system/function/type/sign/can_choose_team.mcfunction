#Made By Fan_Fan_tom
scoreboard players set can_choose_team status 1
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
tellraw @a [{text:"已開啟自由選隊",color:"green"}]