#Made By Fan_Fan_tom





scoreboard objectives add trap_max_timer dummy "陷阱最大時間"
scoreboard objectives add trap_timer dummy "陷阱時間"


scoreboard objectives add dash_front.cd dummy "向前dash 冷卻"
scoreboard objectives add dash_left.cd dummy "向左dash 冷卻"
scoreboard objectives add dash_right.cd dummy "向右dash 冷卻"


team add waiting "等待中"
team modify waiting color yellow
team modify waiting friendlyFire false


team add death_god "死神"
team modify death_god color red
team modify death_god collisionRule never
team modify death_god friendlyFire false


team add runner "逃亡者"
team modify runner color aqua
team modify runner collisionRule never
team modify runner friendlyFire false


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