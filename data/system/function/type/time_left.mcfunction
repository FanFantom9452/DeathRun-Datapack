#Made By Fan_Fan_tom
execute if score 剩餘時間 list matches 1.. run scoreboard players remove 剩餘時間 list 1
execute store result bossbar minecraft:time value run scoreboard players get 剩餘時間 list
bossbar set minecraft:time name [{text:"剩餘時間 : "},{score:{name:"剩餘時間",objective:"list"},color:yellow,bold:true}]
execute if score 剩餘時間 list matches 0 run function system:type/finish/time_is_up

execute if score 剩餘時間 list matches 1.. run schedule function system:type/time_left 1s