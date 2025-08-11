#Made By Fan_Fan_tom
execute store result bossbar minecraft:time value run scoreboard players get 剩餘時間 list
bossbar set minecraft:time name [{text:"剩餘時間 : "},{score:{name:"剩餘時間",objective:"list"},color:yellow,bold:true}]