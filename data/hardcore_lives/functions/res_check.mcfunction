execute as @a if predicate hardcore_lives:set_lives unless score @s hc_lives = hc_start hc_start run function hardcore_lives:set_lives

execute as @a[gamemode=spectator] if score @s hc_lives matches 1.. if predicate hardcore_lives:safe_blocks run function hardcore_lives:resurrect

schedule function #hardcore_lives:timed 10t
