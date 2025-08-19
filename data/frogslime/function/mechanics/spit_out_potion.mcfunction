# Resets the in love value, given the frog doesn't actually consume the glass bottle
data modify entity @s InLove set value 0

# Frog vomits if still on cooldown
execute if score @s frogslime.burp_time matches 2.. run return run function frogslime:mechanics/frog_vomit

# A cute little burp
playsound entity.player.burp neutral @a[distance=..10] ~ ~ ~ 0.5 1.4

# Summon the item
execute anchored eyes run loot spawn ^ ^ ^ loot frogslime:potion

# Sets the cooldown
scoreboard players set @s frogslime.burp_time 60