#Made By Fan_Fan_tom
#新進入玩家加入遊戲
execute if entity @s[team=] run function system:type/player/init


effect give @s saturation infinite 1 true
effect give @s night_vision infinite 1 true
effect give @s[team=waiting] regeneration 1 9 true
effect give @s[team=death_god] minecraft:speed 1 3 true


#碰到傳送門 設置重生點
execute if entity @s[gamemode=adventure] if block ~ ~ ~ minecraft:nether_portal run spawnpoint @s ~ ~ ~ ~




#碰到水死亡
execute if entity @s[gamemode=adventure] if block ~ ~ ~ water if biome ~ ~ ~ minecraft:the_end run damage @s 100 minecraft:drown



