# Resets the event
advancement revoke @s only frogslime:events/event_frog_eats_glass_bottle

# Give frog vomit advancement
execute if score @n[type=minecraft:frog,nbt={InLove:600}] frogslime.burp_time matches 2.. run advancement grant @s only frogslime:husbandry/frog_vomit_advancement

# Give frog potion of croaking advancement
execute if score @n[type=minecraft:frog,nbt={InLove:600},tag=inflated_stage_1] frogslime.burp_time matches ..1 run advancement grant @s only frogslime:husbandry/frog_potion_of_croaking_advancement

# Uses the InLove magic NBT number to identify the most recently fed frog.
# Very unlikely this causes the wrong frog to be targetted, given a player can only feed
# one frog at a time.
execute as @n[type=minecraft:frog,nbt={InLove:600}] at @s run function frogslime:mechanics/spit_out_potion