#> tm_rpg:system/naguri/on_hurt_by

# 殴られたときの処理。進捗 tm_rpg:naguri/hurt_by の報酬と enemy/main から呼ばれる
# 進捗をリセットし、naguri/process_damage を実行する
# @s ＝ 殴られた側

advancement revoke @s only tm_rpg:naguri/hurt_by

function tm_rpg:system/naguri/process_damage
