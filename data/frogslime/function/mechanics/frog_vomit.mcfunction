# Bleah!
playsound minecraft:entity.drowned.hurt ambient @a[distance=..10] ~ ~ ~ 1 1.5

# Frog is technically attacked
damage @s 1 player_attack by @p

# Summons an area affect cloud in front of the frog
execute anchored eyes run summon area_effect_cloud ^ ^ ^ {custom_particle:{type:"item_slime"},Radius:1.25f,Duration:100,potion_contents:{potion:"minecraft:empty",custom_effects:[{id:"minecraft:nausea",amplifier:1,duration:200,show_particles:1b,show_icon:1b,ambient:0b},{id:"minecraft:hunger",amplifier:3,duration:200,show_particles:1b,show_icon:1b,ambient:0b}]}}
