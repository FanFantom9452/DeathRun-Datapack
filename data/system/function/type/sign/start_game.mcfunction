#Made By Fan_Fan_tom
execute if entity @a[team=death_god] run function system:type/start/ready
execute if entity @a[team=death_god] as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
execute unless entity @a[team=death_god] run tellraw @a [{text:"請至少選擇一位死神 再開始遊戲",color:"red"}]
execute unless entity @a[team=death_god] as @a at @s run playsound entity.villager.no master @s ~ ~ ~ 1 1 1