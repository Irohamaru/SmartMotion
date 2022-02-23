scoreboard objectives add sm.Calc dummy
execute unless score #-1 sm.Calc matches -1 run function smart_motion:core/load_once
