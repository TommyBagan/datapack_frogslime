tag @s add inflated_stage_1
attribute @s scale modifier add frogslime:inflated_stage_1 0.5 add_value
execute at @s run playsound minecraft:entity.sniffer.sniffing neutral @a ~ ~ ~ 1 1.7

effect give @s levitation 1 1 true

# Additional, purely for bubble effect
effect give @s minecraft:water_breathing infinite 1 false
