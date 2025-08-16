#Made By Fan_Fan_tom
#排名
function system:type/player/rank/get
title @s times 10 60 10
title @s subtitle [{text:"抵達終點",color:"yellow"}]
title @s title [{text:"恭喜",color:"green"}]
gamemode spectator @s
tellraw @a [{selector:"@s"},{text:" 抵達終點",color:"yellow"},{text:" (", color:"gray"},{text:"第",color:"gray"},{score:{name:"@s",objective:"rank"},color:"gray"},{text:"名)",color:"gray"}]
tellraw @a [{text:"➥ 總耗時 ",color:"white"},{text:"(",color:"gray"},{score:{name:"@s",objective:"timer.min"},color:"gold"},{text:":",color:"gray"},{score:{name:"@s",objective:"timer.second"},color:"gold"},{text:".",color:"gray"},{score:{name:"@s",objective:"timer.tick"},color:"gold"},{text:")",color:"gray"}]
tellraw @a [{text:"➥ 本局死亡數 ",color:"white"},{score:{name:"@s",objective:"one_round_death"},color:"green"},{text:" ☠",color:"light_purple"}]

# 計算平均死亡數（已放大 100 倍）
scoreboard players set #100 total.death 100
scoreboard players operation tmp total.death = @s total.death
scoreboard players operation tmp total.death *= #100 total.death
scoreboard players operation tmp total.death /= @s total.games

# 整數部分
scoreboard players operation int_gd total.death = tmp total.death
scoreboard players operation int_gd total.death /= #100 total.death

# 小數部分
scoreboard players operation dec_gd total.death = tmp total.death
scoreboard players operation dec_gd total.death %= #100 total.death

tellraw @a [{text:"➥ 總累積死亡 ",color:"white"},{score:{name:"@s",objective:"total.death"},color:"green"},{text:" 👻",color:"dark_purple"}]
tellraw @a [{text:"➥ 平均死亡數 ",color:"white"},{score:{name:"int_gd",objective:"total.death"},color:"green"},{text:".",color:"green"},{score:{name:"dec_gd",objective:"total.death"},color:"green"},{text:" 👻",color:"dark_purple"}]
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1



function system:type/player/check_all_player_finish
