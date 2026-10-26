#> tm_rpg:system/naguri/on_hurt_other

advancement revoke @s only tm_rpg:naguri/hurt_other

tag @s add current_attacker

execute as @e[nbt={HurtTime:10s}] if function tm_rpg:system/naguri/check_attacker run function tm_rpg:system/naguri/process_damage

tag @s remove current_attacker
