#Made By Fan_Fan_tom
tellraw @a [{text:"當前所有訊息"}]



function system:type/sign/show_map_name


tellraw @a [{text:"死神 : "},{selector:"@a[team=death_god]"}]
tellraw @a [{text:"遊戲時間 : "},{score:{name:"time",objective:"status"},color:"green",bold:true}]
tellraw @a [{text:"重生次數 : "},{score:{name:"life",objective:"status"},color:"green",bold:true}]
tellraw @a [{text:"向左衝刺冷卻時間 : "},{score:{name:"all_player_cd",objective:"dash_left.cd"},color:"green",bold:true}]
tellraw @a [{text:"向前衝刺冷卻時間 : "},{score:{name:"all_player_cd",objective:"dash_front.cd"},color:"green",bold:true}]
tellraw @a [{text:"向右衝刺冷卻時間 : "},{score:{name:"all_player_cd",objective:"dash_right.cd"},color:"green",bold:true}]
