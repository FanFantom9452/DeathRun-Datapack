#Made By Fan_Fan_tom
team join waiting @s
clear @s
gamemode adventure @s
tp @s -1989 91 -2011 38 -10
scoreboard players reset @s dash_front.cd
scoreboard players reset @s dash_left.cd
scoreboard players reset @s dash_right.cd
effect give @s absorption 1 0 true
title @s times 20 100 20
title @s subtitle [{text:"By",color:"yellow"},{text:"【",color:"red"},{text:"飯桶工作室",color:"white"},{text:"】",color:"red"}]
title @s title [{text:"返祖死亡跑酷",color:"gold"}]

tellraw @s [{text:"您目前遊玩的是免費版本",color:"green"},{text:"\n"},{text:"想購買DLC版本請加入我們的Discord了解",color:"yellow"},{text:"【點我加入】",color:"aqua",bold:true,underlined:true,click_event:{action:"open_url",url:"https://discord.gg/HCarvbQ"}}]