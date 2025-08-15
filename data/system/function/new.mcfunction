#Made By Fan_Fan_tom


bossbar add minecraft:time "剩餘時間"
bossbar set minecraft:time color green


scoreboard objectives add list dummy ""
scoreboard objectives modify list displayname "§c【§f飯桶工作室§c】§6返祖死亡跑酷"
scoreboard players reset * list
scoreboard players set 剩餘時間 list 300
scoreboard objectives setdisplay sidebar list


scoreboard objectives add hp health "§c❤"
scoreboard objectives setdisplay below_name hp
scoreboard objectives add death deathCount "死亡觸發"
scoreboard objectives add one_round_death dummy "一局死亡次數"
scoreboard objectives add total.kill dummy "擊殺數"
scoreboard objectives add total.death dummy "總死亡次數"
scoreboard objectives add total.games dummy "總遊玩次數"
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
setworldspawn -1990 91 -2013

kill @e[type=armor_stand,tag=author]
summon armor_stand -2021 93 -1961 {CustomNameVisible:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["author"],Pose:{LeftArm:[302f,0f,0f],LeftLeg:[0f,0f,342f],RightLeg:[0f,0f,12f],Head:[273f,0f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],equipment:{feet:{id:"minecraft:diamond_boots",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:silence"}}},legs:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:silence"}}},chest:{id:"minecraft:diamond_chestplate",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:silence"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"CuteLime"}}},mainhand:{id:"minecraft:grass_block",count:1,components:{"minecraft:enchantment_glint_override":true}},offhand:{id:"minecraft:wooden_axe",count:1,components:{"minecraft:enchantment_glint_override":true}}},CustomName:"CuteLime"}

summon armor_stand -2016 93 -1961 {CustomNameVisible:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["author"],Pose:{LeftArm:[237f,325f,1f],RightArm:[263f,68f,0f]},DisabledSlots:4144959,Rotation:[180F,0F],equipment:{feet:{id:"minecraft:golden_boots",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:silence"}}},legs:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:silence"}}},chest:{id:"minecraft:golden_chestplate",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:silence"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"Fan_Fan_tom"}}},mainhand:{id:"minecraft:command_block",count:1,components:{"minecraft:enchantment_glint_override":true}},offhand:{id:"minecraft:gold_block",count:1,components:{"minecraft:enchantment_glint_override":true}}},CustomName:"Fan_Fan_tom"}


summon armor_stand -2011 93 -1961 {CustomNameVisible:1b,ShowArms:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["author"],Pose:{LeftArm:[301f,339f,1f],RightArm:[335f,0f,104f]},DisabledSlots:4144959,Rotation:[180F,0F],equipment:{feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:silence"}}},legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:silence"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:silence"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"Genius_Timing"}}},mainhand:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantment_glint_override":true}},offhand:{id:"minecraft:netherite_axe",count:1,components:{"minecraft:enchantment_glint_override":true}}},CustomName:"Genius_Timing"}

kill @e[type=interaction,tag=author]
summon interaction -2021 93 -1961 {width:3f,height:3f,response:1b,Tags:["cutelime","author"]}
summon interaction -2016 93 -1961 {width:3f,height:3f,response:1b,Tags:["fan","author"]}
summon interaction -2011 93 -1961 {width:3f,height:3f,response:1b,Tags:["timing","author"]}






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

team add time "剩餘時間"
function system:type/update_time_team
team modify time color reset
team join time 剩餘時間

team add is_dlc "是否為DLC版本"
team modify is_dlc color reset
team modify is_dlc suffix [{text:"【免費版本】",color:"green"}]
team join is_dlc 當前版本
scoreboard players set 當前版本 list -1

team add ads "廣告"
team modify ads color reset
team modify ads suffix [{text:" : ",color:"gray"},{text:"DLC版本加入會員領取",color:"yellow"}]
team join ads 資訊
scoreboard players set 資訊 list -2

kill @e[type=text_display,tag=text]
summon text_display -2013 102 -2013 {billboard:"fixed",alignment:"center",Rotation:[315F,20F],Tags:["text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},text:{"bold":true,"color":"green","text":"隊伍選擇"}}
summon text_display -1987 102 -1987 {billboard:"fixed",alignment:"center",Rotation:[135F,20F],Tags:["text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},text:{"bold":true,"color":"gold","text":"設定房間"}}
summon text_display -2012 97 -1988 {billboard:"fixed",alignment:"center",Rotation:[225F,20F],Tags:["text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},text:{"bold":true,"color":"yellow","text":"遊戲介紹"}}


summon text_display -2016 96 -1959 {billboard:"fixed",alignment:"center",Rotation:[180F,10F],Tags:["text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},text:[{"color":"red","text":"【"},{"color":"white","text":"飯桶工作室"},{"color":"red","text":"】"}]}


summon text_display -2016 92 -1963 {billboard:"fixed",alignment:"center",Rotation:[180F,-10F],Tags:["text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"color":"yellow","text":"【"},{"color":"white","text":"指令、企劃"},{"color":"yellow","text":"】"}]}

summon text_display -2011 92 -1963 {billboard:"fixed",alignment:"center",Rotation:[180F,-10F],Tags:["text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"color":"gold","text":"【"},{"color":"white","text":"建築、裝飾、陷阱設計"},{"color":"gold","text":"】"}]}
summon text_display -2021 92 -1963 {billboard:"fixed",alignment:"center",Rotation:[180F,-10F],Tags:["text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"color":"gold","text":"【"},{"color":"white","text":"建築、裝飾、陷阱設計"},{"color":"gold","text":"】"}]}



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
schedule clear system:type/tick
function system:type/tick