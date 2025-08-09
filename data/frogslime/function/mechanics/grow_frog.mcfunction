# Determines the stage
execute as @s[tag=!inflated_stage_1] run return run function frogslime:mechanics/grow_frog_stage_1
execute as @s[tag=!inflated_stage_2] run return run function frogslime:mechanics/grow_frog_stage_2
execute as @s[tag=!inflated_stage_3] run return run function frogslime:mechanics/grow_frog_stage_3

# Explodes the frog
execute as @s run function frogslime:mechanics/frog_explode