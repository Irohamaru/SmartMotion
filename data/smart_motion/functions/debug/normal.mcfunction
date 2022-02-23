#ブロックに当たると滑るエンティティを召喚
summon armor_stand ~ ~ ~ {Tags:[SmartMotion],Small:1b}
scoreboard players set @e[tag=SmartMotion,distance=0] sm.Speed 30
execute as @e[tag=SmartMotion,distance=0] run function smart_motion:core/tp
