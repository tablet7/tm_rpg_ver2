#> test_weapon_motion:player/dual/tick

# 双剣の形（twm_state 0）の毎 tick の処理。player/tick から呼ばれる
# 双剣の形では、武器をオフハンドに持ち、メインハンドは空ける（本物の右腕＝自分のスキンを出すため）
# オフハンドのモデル（dual_off）が、短剣を2本とも描く（右の短剣は本物の右腕の拳の位置）
# @s ＝ プレイヤー

# 武器の見た目を双剣に直す（持ち始めたときに1回だけ。拾った斧の形の武器を直す）
execute if entity @s[tag=!twm_dual] run return run function test_weapon_motion:player/dual/fix
# F でメインハンドに持ち替えたときは、オフハンドへ戻す
execute if items entity @s weapon.mainhand *[minecraft:item_model="test_weapon_motion:weapon"] run return run function test_weapon_motion:player/dual/fix

# 右クリックで合体を始める
execute if score #use twm_tmp matches 1 run function test_weapon_motion:player/merge/start
