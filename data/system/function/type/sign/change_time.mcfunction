#Made By Fan_Fan_tom
$scoreboard players $(op) time status $(value)
execute if score time status matches ..9 run scoreboard players set time status 10
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
tellraw @a [{text:"遊戲時間調整為 ",color:"yellow"},{score:{name:"time",objective:"status"},color:"green",bold:true},{text:" 秒",color:"yellow"}]