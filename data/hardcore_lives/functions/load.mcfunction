
# Description: Adds all base resources and starts schedule
# Called by: #minecraft:load

# Scoreboard adding & formatting

scoreboard objectives add hc_lives dummy "Lives"
scoreboard objectives add hc_start dummy "Starting lives"
scoreboard objectives add hc_useB dummy
scoreboard objectives setdisplay list hc_lives

# Set start count if not disabled by hc_use_default_lives being set to 1

scoreboard players set hc_default hc_start 3
execute unless score hc_use_default_lives hc_useB matches 1 run scoreboard players operation hc_start hc_start = hc_default hc_start

# Start schedule

schedule function #hardcore_lives:timed 1s
