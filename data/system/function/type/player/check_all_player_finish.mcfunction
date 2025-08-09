#Made By Fan_Fan_tom
#
execute unless entity @a[scores={rank=..0,life=1..}] run function system:type/finish/all_player_finish
#沒有人得名
execute unless entity @a[scores={rank=..0,life=0}] unless entity @a[scores={rank=1..}] run function system:type/finish/no_one_life
