
# Description: Respawns the player in survival
# Called by: #hardcore_lives:res_check
# Caller: Function, Entity @s

# Set gamemode to survival

gamemode survival

# Remove a life from player

scoreboard players remove @s hc_lives 1

# Display remaining lives (somewhat smart)

execute as @a if score @s hc_lives matches 2.. run tellraw @s [{"score":{"name":"*","objective":"hc_lives"},"color":"red"},{"text":" lives left!","color":"yellow"}]
execute as @a if score @s hc_lives matches 1 run tellraw @s [{"score":{"name":"*","objective":"hc_lives"},"color":"red"},{"text":" life left!","color":"yellow"}]
execute as @a if score @s hc_lives matches 0 run tellraw @s [{"text":"No lives remaining!","color":"yellow"}]
