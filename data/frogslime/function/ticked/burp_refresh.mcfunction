# Decrements the burp cooldown
execute as @e[type=minecraft:frog] run scoreboard players remove @s frogslime.burp_time 1
execute as @e[type=minecraft:frog] if score @s frogslime.burp_time matches ..-1 run scoreboard players set @s frogslime.burp_time 0

# After 30 seconds, let the player know they can use a bottle on us again!
execute as @e[type=minecraft:frog] at @s if score @s frogslime.burp_time matches 1 run particle minecraft:witch ~ ~1 ~ 0.3 0 0.3 1 3 force
execute as @e[type=minecraft:frog] at @s if score @s frogslime.burp_time matches 1 run playsound minecraft:entity.drowned.hurt ambient @a[distance=..10] ~ ~ ~ 1 1.5

# Reschedule this function
schedule function frogslime:ticked/burp_refresh 1s replace