#Made By Fan_Fan_tom
#新進入玩家加入遊戲
execute if entity @s[team=] run function system:type/player/init

#所有玩家狀態效果
effect give @s saturation infinite 1 true
effect give @s night_vision infinite 1 true
effect give @s weakness 1 1 true
#等待中的玩家可以無限回血
effect give @s[team=waiting] regeneration 1 9 true


#死神傳送門 A to B
execute if block ~ ~ ~ nether_portal if entity @e[type=marker,tag=death_god_nether_teleport_door_a,distance=..5] run function system:type/player/death_god/teleport_a_to_b

#死神傳送門 B to A
execute if block ~ ~ ~ nether_portal if entity @e[type=marker,tag=death_god_nether_teleport_door_b,distance=..5] run function system:type/player/death_god/teleport_b_to_a

#重製特殊屬性
attribute @s[team=!runner] block_interaction_range base reset
attribute @s[team=!death_god] scale base reset
#死神運作
execute if score status status matches 1 if entity @s[team=death_god,gamemode=adventure] run function system:type/player/death_god/tick
#逃亡者運作 | 碰到水死亡 | 抵達終點
execute if score status status matches 1 if entity @s[team=runner,gamemode=adventure] run function system:type/player/runner/tick