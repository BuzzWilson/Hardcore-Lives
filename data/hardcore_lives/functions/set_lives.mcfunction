
# Description: Sets lives for players if they meet the requirements
# Called by: hardcore_lives:lives_check
# Caller: Function

# Sets player lives to the value of hc_start

scoreboard players operation @s hc_lives = hc_start hc_start
