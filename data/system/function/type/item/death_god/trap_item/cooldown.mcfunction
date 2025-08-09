#Made By Fan_Fan_tom
scoreboard players operation tmp trap_timer = @n[type=marker,tag=trap_give_item_point,distance=..4] trap_timer
scoreboard players set #20 trap_timer 20
scoreboard players operation tmp trap_timer /= #20 trap_timer


execute unless score tmp trap_timer matches 11.. run item replace entity @s hotbar.3 with paper[item_model="minecraft:yellow_wool"] 1
execute unless score tmp trap_timer matches 11.. run item replace entity @s hotbar.4 with paper[item_model="minecraft:yellow_wool"] 1
execute unless score tmp trap_timer matches 11.. run item replace entity @s hotbar.5 with paper[item_model="minecraft:yellow_wool"] 1


execute if score tmp trap_timer matches 11.. run item replace entity @s hotbar.3 with paper[item_model="minecraft:red_wool"] 1
execute if score tmp trap_timer matches 11.. run item replace entity @s hotbar.4 with paper[item_model="minecraft:red_wool"] 1
execute if score tmp trap_timer matches 11.. run item replace entity @s hotbar.5 with paper[item_model="minecraft:red_wool"] 1


item modify entity @s hotbar.3 system:death_god/trap_cooldown
item modify entity @s hotbar.4 system:death_god/trap_cooldown
item modify entity @s hotbar.5 system:death_god/trap_cooldown

#頭顱
item replace entity @s armor.head with player_head[item_name={"color":"dark_purple","italic":false,"text":"死神"},enchantment_glint_override=true,enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},tooltip_display={hidden_components:["enchantments"]},profile={id:[I;-1266961795,-471055885,-1801601539,609018431],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWJhNWY5YTRjZWNlMTg4YzU4MDg1NjNhNGMwMzA5OWRkYjdkZDBmODQ1ZGI0OTVmNzBhMzFmMjI2NWIxMTFkOCJ9fX0="}]}] 1



