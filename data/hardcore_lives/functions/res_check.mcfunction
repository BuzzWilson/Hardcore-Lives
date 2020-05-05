
# Description: Checks all players if they are dead and a need a revive
# Called by: #hardcore_lives:timed
# Caller: Schedule

# Checks player lives to resurrect them

execute as @a[gamemode=spectator] if score @s hc_lives matches 1.. if predicate hardcore_lives:safe_blocks run function hardcore_lives:resurrect

# Reschedule

schedule function #hardcore_lives:timed 10t
