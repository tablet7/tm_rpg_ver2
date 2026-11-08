#> tm_rpg:system/naguri/on_hurt_other

# 殴ったときの処理。進捗 tm_rpg:naguri/hurt_other の報酬から呼ばれる
# 進捗をリセットし、自分が殴った相手に naguri/process_damage を実行する
# @s ＝ 殴ったプレイヤー

advancement revoke @s only tm_rpg:naguri/hurt_other

tag @s add current_attacker

execute as @e[nbt={HurtTime:10s}] if function tm_rpg:system/naguri/check_attacker run function tm_rpg:system/naguri/process_damage

tag @s remove current_attacker
