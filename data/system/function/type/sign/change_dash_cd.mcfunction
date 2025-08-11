#Made By Fan_Fan_tom
$scoreboard players $(op) all_player_cd $(target) $(value)
$execute if score all_player_cd $(target) matches ..4 run scoreboard players set all_player_cd $(target) 5
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1


$tellraw @a [{text:"$(name)調整為 ",color:"yellow"},{score:{name:"all_player_cd",objective:"$(target)"},color:"green",bold:true},{text:" 秒",color:"yellow"}]