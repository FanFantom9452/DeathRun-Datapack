#Made By Fan_Fan_tom
#陷阱沒有最大秒數就先給
execute unless score @s trap_max_timer matches -2147483648..2147483647 run function system:type/trap/init
#冷卻運算
execute if score @s trap_timer matches 1.. run function system:type/trap/cooldown
#時間倒數完就重製陷阱
execute if score @s trap_timer matches 0 run function system:type/trap/reset_glass

particle dust{color:16052240,scale:1f} ~ ~ ~ 0 0 0 0 1 force @a[gamemode=creative,distance=..100]