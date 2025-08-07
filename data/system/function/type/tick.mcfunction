#Made By Fan_Fan_tom

#玩家類 tick
execute as @a at @s run function system:type/player/tick

#設定陷阱預設秒數
execute as @e[type=marker,tag=trap_give_item_point] at @s run function system:type/trap/tick
#陷阱幾秒後會自動重製
execute as @e[type=marker,tag=trap_reset_point] at @s run function system:type/trap_reset/tick

execute as @e[type=marker,tag=trap_trigger_point] at @s run particle dust{color:16711680,scale:1f} ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative]



schedule function system:type/tick 1t