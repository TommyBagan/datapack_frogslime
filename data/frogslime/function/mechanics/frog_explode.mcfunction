effect give @s minecraft:invisibility infinite 1 true
execute at @s run playsound minecraft:entity.firework_rocket.blast neutral @a ~ ~ ~ 1 2
execute at @s run particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1 force
execute at @s run particle minecraft:item_slime ~ ~1 ~ 0 0 0 1 16 normal
kill @s