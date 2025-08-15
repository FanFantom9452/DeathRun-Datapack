#音效
#function system:type/summon/motion_wind_charge {offsetY:1.5,dx:0,dy:0,speed:2.5}

playsound entity.wind_charge.throw master @a[distance=..30] ~ ~ ~ 1 1 0.3
#生成箭矢：
$execute positioned ~ ~$(offsetY) ~ run summon breeze_wind_charge ~ ~ ~ {Tags:["unset"],life:20}


#將目標點從(0,0,0)往前移動一格
$execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[type=marker,tag=object,limit=1] ^$(dx) ^$(dy) ^$(speed)


#將目標點的座標，存入箭矢的Motion中：
$execute positioned ~ ~$(offsetY) ~ run data modify entity @e[type=breeze_wind_charge,tag=unset,limit=1,sort=nearest] Motion set from entity @e[type=marker,tag=object,limit=1] Pos