#> test_weapon_motion:give

# 変形武器（双剣の形）を渡す。オフハンドが空いていればオフハンドに、空いていなければ持ち物に入れる
# 使い方: /function test_weapon_motion:give（@s ＝ プレイヤー）。player/lost からも呼ばれる
# 偽物の腕（斧の形のときの腕）の色は @s の twm_skin（肌）/ twm_sleeve（袖）。RGB の整数（例: 0xC69680 → 13014656）。無ければ初期の色

# 色をルートテーブル（test_weapon_motion:weapon）へ渡す
scoreboard players set #skin twm_tmp 13014656
scoreboard players set #sleeve twm_tmp 5909122
execute if score @s twm_skin matches 0.. run scoreboard players operation #skin twm_tmp = @s twm_skin
execute if score @s twm_sleeve matches 0.. run scoreboard players operation #sleeve twm_tmp = @s twm_sleeve

execute unless items entity @s weapon.offhand * run return run loot replace entity @s weapon.offhand loot test_weapon_motion:weapon
loot give @s loot test_weapon_motion:weapon
