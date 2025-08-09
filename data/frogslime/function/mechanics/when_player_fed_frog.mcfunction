# Resets the event
advancement revoke @s only frogslime:events/event_player_fed_frog

# Uses the InLove magic NBT number to identify the most recently fed frog.
# Very unlikely this causes the wrong frog to be targetted, given a player can only feed
# one frog at a time.
execute as @n[type=minecraft:frog,nbt={InLove:600}] run function frogslime:mechanics/grow_frog