#Made By Fan_Fan_tom
tellraw @a [{text:"-----",color:"gray"},{text:"【建議配置】",color:"yellow"},{text:"-----",color:"gray"}]
function system:type/sign/show_default_setting




tellraw @a [{text:"-----",color:"gray"},{text:"【當前設定】",color:"green"},{text:"-----",color:"gray"}]

function system:type/sign/show_map_name


execute if entity @a[team=death_god] run tellraw @a [{text:"死神 : "},{selector:"@a[team=death_god]"}]
execute unless entity @a[team=death_god] run tellraw @a [{text:"死神 : "},{text:"尚未選擇",color:"red"}]
tellraw @a [{text:"遊戲時間 : "},{score:{name:"time",objective:"status"},color:"green",bold:true}]
tellraw @a [{text:"重生次數 : "},{score:{name:"life",objective:"status"},color:"green",bold:true}]
tellraw @a [{text:"向左衝刺冷卻時間 : "},{score:{name:"all_player_cd",objective:"dash_left.cd"},color:"green",bold:true}]
tellraw @a [{text:"向前衝刺冷卻時間 : "},{score:{name:"all_player_cd",objective:"dash_front.cd"},color:"green",bold:true}]
tellraw @a [{text:"向右衝刺冷卻時間 : "},{score:{name:"all_player_cd",objective:"dash_right.cd"},color:"green",bold:true}]
tellraw @a [{text:"-------------------",color:"gray"}]