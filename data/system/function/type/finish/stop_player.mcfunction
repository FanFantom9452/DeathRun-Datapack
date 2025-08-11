#Made By Fan_Fan_tom
gamemode spectator @a
#結算狀態
scoreboard players set status status 2

#用時多久 close
scoreboard players set timer status 0
clear @a

#重設門
function system:type/map/auto_choose_reset_start_door with storage system:status


schedule clear system:type/time_left