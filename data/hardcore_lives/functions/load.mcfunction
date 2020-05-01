scoreboard objectives add hc_lives dummy "Lives"
scoreboard objectives add hc_start dummy "Starting lives"
scoreboard players set hc_start hc_start 3
schedule function hardcore_lives:resurrect 1s
