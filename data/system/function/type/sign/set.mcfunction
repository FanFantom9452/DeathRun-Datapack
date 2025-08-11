#幾人死神
setblock -1983 97 -1988 birch_wall_sign[facing=south]{front_text:{messages:["",{"text":"隨機 1 名死神","click_event":{"action":"run_command","command":"function system:type/sign/choose_death_god {limit:1}"}},"",""]}} replace
setblock -1982 97 -1988 birch_wall_sign[facing=south]{front_text:{messages:["",{"text":"隨機 2 名死神","click_event":{"action":"run_command","command":"function system:type/sign/choose_death_god {limit:2}"}},"",""]}} replace
setblock -1981 97 -1988 birch_wall_sign[facing=south]{front_text:{messages:["",{"text":"隨機 3 名死神","click_event":{"action":"run_command","command":"function system:type/sign/choose_death_god {limit:3}"}},"",""]}} replace
setblock -1980 97 -1988 birch_wall_sign[facing=south]{front_text:{messages:["",{"text":"隨機 4 名死神","click_event":{"action":"run_command","command":"function system:type/sign/choose_death_god {limit:4}"}},"",""]}} replace
setblock -1979 97 -1988 birch_wall_sign[facing=south]{front_text:{messages:["",{"text":"隨機 5 名死神","click_event":{"action":"run_command","command":"function system:type/sign/choose_death_god {limit:5}"}},"",""]}} replace
#開關自由選隊
setblock -1982 96 -1988 birch_wall_sign[facing=south]{front_text:{messages:["",{"text":"開啟自由選隊","click_event":{"action":"run_command","command":"function system:type/sign/can_choose_team"}},"",""]}} replace
setblock -1980 96 -1988 birch_wall_sign[facing=south]{front_text:{messages:["",{"text":"關閉自由選隊","click_event":{"action":"run_command","command":"function system:type/sign/cant_choose_team"}},"",""]}} replace
#重設隊伍
setblock -1981 96 -1988 birch_wall_sign[facing=south]{front_text:{messages:["",{"text":"重置隊伍","click_event":{"action":"run_command","command":"function system:type/sign/all_player_waiting {limit:3}"}},"",""]}} replace

#遊戲時間調整
setblock -1980 97 -1978 birch_wall_sign[facing=north]{front_text:{messages:["",{"text":"增加遊戲時間","click_event":{"action":"run_command","command":"function system:type/sign/change_time {op:\"add\",value:10}"}},"",""]}} replace
setblock -1980 96 -1978 birch_wall_sign[facing=north]{front_text:{messages:["",{"text":"減少遊戲時間","click_event":{"action":"run_command","command":"function system:type/sign/change_time {op:\"remove\",value:10}"}},"",""]}} replace

#重生次數調整
setblock -1981 97 -1978 birch_wall_sign[facing=north]{front_text:{messages:["",{"text":"增加重生次數","click_event":{"action":"run_command","command":"function system:type/sign/change_life {op:\"add\",value:1}"}},"",""]}} replace
setblock -1981 96 -1978 birch_wall_sign[facing=north]{front_text:{messages:["",{"text":"減少重生次數","click_event":{"action":"run_command","command":"function system:type/sign/change_life {op:\"remove\",value:1}"}},"",""]}} replace

#左DASH 調整
setblock -1984 97 -1978 birch_wall_sign[facing=north]{front_text:{messages:["",{"text":"增加向左衝刺冷卻時間","click_event":{"action":"run_command","command":"function system:type/sign/change_dash_cd {op:\"add\",target:\"dash_left.cd\",value:5,name:\"向左衝刺冷卻時間\"}"}},"",""]}} replace
setblock -1984 96 -1978 birch_wall_sign[facing=north]{front_text:{messages:["",{"text":"減少向左衝刺冷卻時間","click_event":{"action":"run_command","command":"function system:type/sign/change_dash_cd {op:\"remove\",target:\"dash_left.cd\",value:5,name:\"向左衝刺冷卻時間\"}"}},"",""]}} replace
#前DASH 調整
setblock -1985 97 -1978 birch_wall_sign[facing=north]{front_text:{messages:["",{"text":"增加向前衝刺冷卻時間","click_event":{"action":"run_command","command":"function system:type/sign/change_dash_cd {op:\"add\",target:\"dash_front.cd\",value:5,name:\"向前衝刺冷卻時間\"}"}},"",""]}} replace
setblock -1985 96 -1978 birch_wall_sign[facing=north]{front_text:{messages:["",{"text":"減少向前衝刺冷卻時間","click_event":{"action":"run_command","command":"function system:type/sign/change_dash_cd {op:\"remove\",target:\"dash_front.cd\",value:5,name:\"向前衝刺冷卻時間\"}"}},"",""]}} replace
#右DASH 調整
setblock -1986 97 -1978 birch_wall_sign[facing=north]{front_text:{messages:["",{"text":"增加向右衝刺冷卻時間","click_event":{"action":"run_command","command":"function system:type/sign/change_dash_cd {op:\"add\",target:\"dash_right.cd\",value:5,name:\"向右衝刺冷卻時間\"}"}},"",""]}} replace
setblock -1986 96 -1978 birch_wall_sign[facing=north]{front_text:{messages:["",{"text":"減少向右衝刺冷卻時間","click_event":{"action":"run_command","command":"function system:type/sign/change_dash_cd {op:\"remove\",target:\"dash_right.cd\",value:5,name:\"向右衝刺冷卻時間\"}"}},"",""]}} replace






#選擇下一張地圖
setblock -1978 96 -1980 birch_wall_sign[facing=west]{front_text:{messages:["",{"text":"下一張地圖","click_event":{"action":"run_command","command":"function system:type/sign/change_map {op:\"add\"}"}},"",""]}} replace
#選擇上一張地圖
setblock -1978 96 -1986 birch_wall_sign[facing=west]{front_text:{messages:["",{"text":"上一張地圖","click_event":{"action":"run_command","command":"function system:type/sign/change_map {op:\"remove\"}"}},"",""]}} replace


#當前所有資訊
setblock -1978 96 -1983 birch_wall_sign[facing=west]{front_text:{messages:["",{"text":"當前所有資訊","click_event":{"action":"run_command","command":"function system:type/sign/info"}},"",""]}} replace


#開始遊戲
setblock -1988 97 -1981 birch_wall_sign[facing=east]{front_text:{messages:["",{"text":"開始遊戲","click_event":{"action":"run_command","command":"function system:type/sign/start_game"}},"",""]}} replace
