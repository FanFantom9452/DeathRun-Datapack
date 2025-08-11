#Made By Fan_Fan_tom
function system:type/start/ready
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
#tellraw @a [{text:"Map "},{score:{name:"map",objective:"status"}}]