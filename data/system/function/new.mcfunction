#Made By Fan_Fan_tom


bossbar add minecraft:time "剩餘時間"
bossbar set minecraft:time color green


scoreboard objectives add list dummy "§c【§f飯桶工作室§c】§e死亡跑酷"
scoreboard players reset * list
scoreboard players set 剩餘時間 list 300
scoreboard objectives setdisplay sidebar list


scoreboard objectives add hp health "§c❤"
scoreboard objectives setdisplay below_name hp
scoreboard objectives add death deathCount "死亡觸發"
scoreboard objectives add one_round_death dummy "一局死亡次數"
scoreboard objectives add total.kill dummy "擊殺數"
scoreboard objectives add total.death dummy "總死亡次數"
scoreboard objectives add life dummy "玩家復活剩餘次數"
scoreboard objectives setdisplay list life

scoreboard objectives add finish_time dummy "抵達終點時間"


scoreboard objectives add item.spyglass.count dummy "望遠鏡 道具數量"
scoreboard objectives add item.feather.count dummy "羽毛數量"


scoreboard objectives add trap_max_timer dummy "陷阱最大時間"
scoreboard objectives add trap_timer dummy "陷阱時間"


scoreboard objectives add dash_front.cd dummy "向前dash 冷卻"
scoreboard objectives add dash_left.cd dummy "向左dash 冷卻"
scoreboard objectives add dash_right.cd dummy "向右dash 冷卻"
execute unless score all_player_cd dash_front.cd matches -2147483648..2147483647 run scoreboard players set all_player_cd dash_front.cd 60
execute unless score all_player_cd dash_left.cd matches -2147483648..2147483647 run scoreboard players set all_player_cd dash_left.cd 60
execute unless score all_player_cd dash_right.cd matches -2147483648..2147483647 run scoreboard players set all_player_cd dash_right.cd 60

scoreboard objectives add teleport_point.id dummy "傳送門ID"


scoreboard objectives add rank dummy "名次"
scoreboard objectives add status dummy "遊戲當前狀態"
execute unless score status status matches -2147483648..2147483647 run scoreboard players set status status 0
execute unless score can_choose_team status matches -2147483648..2147483647 run scoreboard players set can_choose_team status 0
execute unless score map status matches -2147483648..2147483647 run scoreboard players set map status 1
execute unless score timer status matches -2147483648..2147483647 run scoreboard players set timer status 0
execute unless score time status matches -2147483648..2147483647 run scoreboard players set time status 300

scoreboard objectives add timer.tick dummy "耗時-刻"
scoreboard objectives add timer.second dummy "耗時-秒"
scoreboard objectives add timer.min dummy "耗時-分"

scoreboard objectives add checkpoint.cd dummy "不能踩checkpoint 冷卻"

scoreboard objectives add command dummy "指令用 不重要的資料丟這裡"
scoreboard objectives add sand_bomb dummy "沙漠炸彈 隨機偵測"
#生成目標點(object)：
kill @e[type=marker,tag=object]
summon marker 0.0 0.0 0.0 {Tags:["object"]}

#載入區塊，確保效果雲不會消失：
forceload add -1 -1 0 0

team add waiting "等待中"
team modify waiting color yellow
team modify waiting friendlyFire false


team add death_god "死神"
team modify death_god color light_purple
team modify death_god collisionRule never
team modify death_god friendlyFire false
team modify death_god prefix [{text:"§d【死神】"}]


team add runner "逃亡者"
team modify runner color blue
team modify runner collisionRule never
team modify runner friendlyFire false
team modify runner prefix [{text:"§9【逃亡者】"}]

team add do_not_finish "未完成"
team modify do_not_finish color dark_gray
team modify do_not_finish collisionRule never
team modify do_not_finish friendlyFire false
team modify do_not_finish prefix [{text:"§c【未完成】§r"}]


team add 1st "冠軍"
team modify 1st color aqua
team modify 1st collisionRule never
team modify 1st friendlyFire false
team modify 1st prefix [{text:"§b【冠軍】§r"}]


team add 2nd "亞軍"
team modify 2nd color gold
team modify 2nd collisionRule never
team modify 2nd friendlyFire false
team modify 2nd prefix [{text:"§6【亞軍】§r"}]



team add 3rd "季軍"
team modify 3rd color white
team modify 3rd collisionRule never
team modify 3rd friendlyFire false
team modify 3rd prefix [{text:"§f【季軍】§r"}]

team add finish "抵達終點"
team modify finish color green
team modify finish collisionRule never
team modify finish friendlyFire false
team modify finish prefix [{text:"§a【抵達終點】§r"}]


#禁止進入傳送門
gamerule playersNetherPortalCreativeDelay 1000000000
gamerule playersNetherPortalDefaultDelay 1000000000
gamerule doMobSpawning false
gamerule doDaylightCycle false
time set noon
gamerule doEntityDrops false
gamerule doTileDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule commandBlockOutput false
gamerule doInsomnia false
gamerule doMobLoot false
gamerule doTraderSpawning false
gamerule doWardenSpawning false
gamerule doWeatherCycle false
weather clear 99999d
gamerule fallDamage false
gamerule keepInventory true
gamerule mobGriefing false
gamerule locatorBar false
gamerule spawnChunkRadius 0
gamerule naturalRegeneration false
gamerule maxEntityCramming 0
#start loop
function system:type/tick