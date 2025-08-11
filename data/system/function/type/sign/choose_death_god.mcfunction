#Made By Fan_Fan_tom
team join waiting @a
$team join death_god @r[team=waiting,limit=$(limit)]
team join runner @a[team=waiting]
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
tellraw @a [{selector:"@a[team=death_god]"},{text:" 成為了死神",color:"yellow"}]