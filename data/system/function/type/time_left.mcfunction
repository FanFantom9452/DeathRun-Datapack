#Made By Fan_Fan_tom
execute if score 剩餘時間 list matches 1.. run scoreboard players remove 剩餘時間 list 1
function system:type/show_time_left
execute if score 剩餘時間 list matches 0 run function system:type/finish/time_is_up

execute if score 剩餘時間 list matches 1.. run schedule function system:type/time_left 1s