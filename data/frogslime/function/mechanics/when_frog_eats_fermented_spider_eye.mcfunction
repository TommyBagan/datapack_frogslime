# Resets the event
advancement revoke @s only frogslime:events/event_frog_eats_fermented_spider_eye

# Gives the player the pop advancement
execute if entity @n[type=minecraft:frog,nbt={InLove:600},tag=inflated_stage_3] run advancement grant @s only frogslime:husbandry/frog_pops_advancement

# Uses the InLove magic NBT number to identify the most recently fed frog.
# Very unlikely this causes the wrong frog to be targetted, given a player can only feed
# one frog at a time.
execute as @n[type=minecraft:frog,nbt={InLove:600}] at @s run function frogslime:mechanics/grow_frog

# Gives the player the floating advancement
execute if entity @n[type=minecraft:frog,nbt={InLove:600},tag=inflated_stage_3] run advancement grant @s only frogslime:husbandry/frog_floats_advancement
