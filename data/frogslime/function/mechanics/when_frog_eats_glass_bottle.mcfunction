# Resets the event
advancement revoke @s only frogslime:events/event_frog_eats_glass_bottle

# Uses the InLove magic NBT number to identify the most recently fed frog.
# Very unlikely this causes the wrong frog to be targetted, given a player can only feed
# one frog at a time.
execute as @n[type=minecraft:frog,nbt={InLove:600}] at @s run function frogslime:mechanics/spit_out_potion