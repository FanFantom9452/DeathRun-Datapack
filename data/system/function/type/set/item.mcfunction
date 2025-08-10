#Made By Fan_Fan_tom

item replace entity @s hotbar.0 with command_block[item_name="顯示玻璃",minecraft:item_model="minecraft:lime_stained_glass",enchantment_glint_override=true,block_entity_data={id:"command_block",auto:1b,Command:"function system:type/set/show_glass"}] 1

item replace entity @s hotbar.1 with command_block[item_name="給予陷阱觸發物品範圍",minecraft:item_model="minecraft:diamond",enchantment_glint_override=true,block_entity_data={id:"command_block",auto:1b,Command:"function system:type/set/trap_give_item_point"}] 1


item replace entity @s hotbar.2 with command_block[item_name="陷阱放置觸發點(紅石磚)",minecraft:item_model="minecraft:redstone_block",enchantment_glint_override=true,block_entity_data={id:"command_block",auto:1b,Command:"function system:type/set/trap_trigger_point"}] 1

item replace entity @s hotbar.3 with command_block[item_name="陷阱重製觸發點(紅石磚)",minecraft:item_model="minecraft:glass",enchantment_glint_override=true,block_entity_data={id:"command_block",auto:1b,Command:"function system:type/set/trap_reset_point"}] 1




item replace entity @s hotbar.4 with command_block[item_name="死神傳送點A",minecraft:item_model="minecraft:ender_pearl",enchantment_glint_override=true,block_entity_data={id:"command_block",auto:1b,Command:"function system:type/set/death_god_nether_teleport_door_a"}] 1

item replace entity @s hotbar.5 with command_block[item_name="死神傳送點B",minecraft:item_model="minecraft:ender_eye",enchantment_glint_override=true,block_entity_data={id:"command_block",auto:1b,Command:"function system:type/set/death_god_nether_teleport_door_b"}] 1


item replace entity @s hotbar.6 with command_block[item_name="終點",minecraft:item_model="minecraft:mojang_banner_pattern",enchantment_glint_override=true,block_entity_data={id:"command_block",auto:1b,Command:"function system:type/set/finish_point"}] 1



item replace entity @s hotbar.7 with green_wool[item_name="增加陷阱冷卻",max_stack_size=99] 99
item replace entity @s hotbar.8 with red_wool[item_name="減少陷阱冷卻",max_stack_size=99] 99


item replace entity @s inventory.0 with green_concrete[item_name="增加陷阱持續時間",max_stack_size=99] 99
item replace entity @s inventory.1 with red_concrete[item_name="減少陷阱持續時間",max_stack_size=99] 99


item replace entity @s inventory.7 with green_terracotta[item_name="增加死神傳送門 ID 1",max_stack_size=99] 99
item replace entity @s inventory.8 with red_terracotta[item_name="減少死神傳送門 ID 1",max_stack_size=99] 99
item replace entity @s inventory.9 with arrow[item_name="調整死神傳送門角度",max_stack_size=99] 99



item replace entity @s inventory.10 with bedrock[item_name="丟出刪除設定點",max_stack_size=99] 99


item replace entity @s inventory.25 with command_block[item_name="會消失的 海燈籠 並自動復原",minecraft:item_model="minecraft:sea_lantern",enchantment_glint_override=true,block_entity_data={id:"command_block",auto:1b,Command:"function system:type/set/sea_lantern_block"}] 1
item replace entity @s inventory.26 with command_block[item_name="會消失的 紅色混泥土方塊 並自動復原",minecraft:item_model="minecraft:red_stained_glass",enchantment_glint_override=true,block_entity_data={id:"command_block",auto:1b,Command:"function system:type/set/red_disappear_block"}] 1