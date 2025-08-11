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

#重製
execute if score status status matches 0 if entity @s[tag=playing] run team leave @s
execute if score status status matches 0 if entity @s[tag=playing] run tag @s remove playing


#死神運作
execute if score status status matches 1 if entity @s[team=death_god,gamemode=adventure] run function system:type/player/death_god/tick
#逃亡者運作 | 碰到水死亡 | 抵達終點
execute if score status status matches 1 if entity @s[team=runner,gamemode=adventure] run function system:type/player/runner/tick



#跑到設定房
execute if entity @s[x=-1988,y=95,z=-1988,dx=10,dy=5,dz=10,gamemode=!creative] run tellraw @s [{text:"僅限創造模式進入",color:"red"}]
execute if entity @s[x=-1988,y=95,z=-1988,dx=10,dy=5,dz=10,gamemode=!creative] run tp @s -1990 91 -2013 38 -10