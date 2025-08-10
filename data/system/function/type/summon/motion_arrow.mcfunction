#音效
#function system:type/summon/motion_arrow {offsetY:1.5,damage:2.5,dx:0,dy:0,speed:2.5}

playsound entity.arrow.shoot master @a[distance=..30] ~ ~ ~ 1 1 0.3
#生成箭矢：
$execute positioned ~ ~$(offsetY) ~ run summon arrow ~ ~ ~ {Tags:["unset"],damage:$(damage),crit:0b,PortalCooldown:20,PierceLevel:100,life:20}

#將目標點從(0,0,0)往前移動一格
$execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[type=marker,tag=object,limit=1] ^$(dx) ^$(dy) ^$(speed)


#將目標點的座標，存入箭矢的Motion中：
$execute positioned ~ ~$(offsetY) ~ run data modify entity @e[type=arrow,tag=unset,limit=1,sort=nearest] Motion set from entity @e[type=marker,tag=object,limit=1] Pos