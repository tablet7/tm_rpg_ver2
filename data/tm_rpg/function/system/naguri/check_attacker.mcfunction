#> tm_rpg:system/naguri/check_attacker

# 殴った相手が tag=current_attacker のエンティティかを判定する関数。naguri/on_hurt_other から execute if function で呼ばれる
# @s ＝ 殴られた側

execute on attacker if entity @s[tag=current_attacker]
