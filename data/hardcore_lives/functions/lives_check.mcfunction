
# Description: Checks if player is eligible for setting the hc_start lives
# Called by: #hardcore_lives:timed
# Caller: Schedule

execute as @a if predicate hardcore_lives:set_lives unless score @s hc_lives = hc_start hc_start run function hardcore_lives:set_lives
