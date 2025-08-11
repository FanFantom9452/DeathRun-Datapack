#Made By Fan_Fan_tom
$scoreboard players $(op) life status $(value)
execute if score life status matches ..0 run scoreboard players set life status 1
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
tellraw @a [{text:"重生次數調整為 ",color:"yellow"},{score:{name:"life",objective:"status"},color:"green",bold:true},{text:" 次",color:"yellow"}]