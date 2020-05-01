scoreboard objectives add hc_lives dummy "Lives"
scoreboard objectives add hc_start dummy "Starting lives"
scoreboard objectives add hc_useB dummy
scoreboard players set hc_default hc_start 3
execute unless score hc_use_default_lives hc_useB matches 1 run scoreboard players operation hc_start hc_start = hc_default hc_start
scoreboard objectives setdisplay list hc_lives
schedule function #hardcore_lives:timed 1s
