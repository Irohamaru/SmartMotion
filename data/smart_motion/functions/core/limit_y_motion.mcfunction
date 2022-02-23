#天井をすり抜けないように上方向のMotionの上限補正

#Y座標の小数点以下を取得
scoreboard players operation #YMotion sm.Calc = # sm.Y
scoreboard players operation #YMotion sm.Calc %= #100 sm.Calc

#制限なし
scoreboard players set # sm.Calc 1000
#当たり判定ありのブロック 
execute unless block ~ ~1 ~ #smart_motion:no_collision run scoreboard players set # sm.Calc 100
#半ブロック、トラップドア
execute if block ~ ~ ~ #minecraft:slabs[type=top] run scoreboard players set # sm.Calc 50
execute if block ~ ~ ~ #minecraft:trapdoors[half=top] run scoreboard players set # sm.Calc 81
execute if block ~ ~1 ~ #minecraft:slabs[type=top] run scoreboard players set # sm.Calc 150
execute if block ~ ~1 ~ #minecraft:trapdoors[half=top] run scoreboard players set # sm.Calc 181
#階段
execute if block ~ ~ ~ #minecraft:stairs[half=top] run scoreboard players set # sm.Calc 50
#stairs北東
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=south] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_left] align xyz positioned ~0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=west] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_right] align xyz positioned ~0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=north,shape=outer_left] align xyz positioned ~0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=east,shape=outer_right] align xyz positioned ~0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
#stairs南東
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=north] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_right] align xyz positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=west] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_left] align xyz positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=south,shape=outer_right] align xyz positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=east,shape=outer_left] align xyz positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~-0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
#stairs南西
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=north] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_left] align xyz positioned ~-0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=east] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_right] align xyz positioned ~-0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=south,shape=outer_left] align xyz positioned ~-0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=west,shape=outer_right] align xyz positioned ~-0.5 ~ ~0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~-0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
#stairs北西
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=south] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_right] align xyz positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=east] unless block ~ ~1 ~ #minecraft:stairs[shape=inner_left] align xyz positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=north,shape=outer_right] align xyz positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
execute if block ~ ~1 ~ #minecraft:stairs[half=top,facing=west,shape=outer_left] align xyz positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0,dy=0,dz=0] align xyz positioned ~0.2 ~ ~0.2 if entity @s[dx=0,dy=0,dz=0] positioned as @s run scoreboard players set # sm.Calc 10000
#ガラス板=>フェンス=>壁の引っかかり
execute if block ~ ~ ~ #smart_motion:pane_shape if block ~ ~1 ~ #smart_motion:pane_shape run scoreboard players set # sm.Calc 1000
execute if block ~ ~ ~ #smart_motion:fence_shape if block ~ ~1 ~ #smart_motion:pane_shape run scoreboard players set # sm.Calc 1000
execute if block ~ ~ ~ #smart_motion:fence_shape if block ~ ~1 ~ #smart_motion:fence_shape run scoreboard players set # sm.Calc 1000
execute if block ~ ~ ~ #smart_motion:wall_shape if block ~ ~1 ~ #smart_motion:pane_shape run scoreboard players set # sm.Calc 1000
execute if block ~ ~ ~ #smart_motion:wall_shape if block ~ ~1 ~ #smart_motion:fence_shape run scoreboard players set # sm.Calc 1000
execute if block ~ ~ ~ #smart_motion:wall_shape if block ~ ~1 ~ #smart_motion:wall_shape run scoreboard players set # sm.Calc 1000

scoreboard players operation #YMotion sm.Calc -= # sm.Calc
scoreboard players operation #YMotion sm.Calc *= #-1 sm.Calc

scoreboard players remove #YMotion sm.Calc 2
scoreboard players operation #YMotion sm.Calc *= #100 sm.Calc

#天井のブロック判定追加
execute if score #YMotion sm.Calc matches ..0 run scoreboard players set @s sm.Y 2
