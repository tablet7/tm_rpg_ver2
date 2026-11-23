#> test_weapon_motion:sengi/common/run

# 戦技の関数を呼ぶマクロ関数。sengi/common/use から呼ばれる
# 呼ぶ関数名を武器の custom_data（sengi / sengi2）で変えるためにマクロを使っている（マクロでしか書けない。シフト＋右クリックのときだけ動く）
# 使い方: function test_weapon_motion:sengi/common/run with storage test_weapon_motion:sengi item
# 引数: func ＝ 戦技の関数 ID（例: "test_weapon_motion:sengi/back_step/skill1"）
# 戻り値: 戦技の関数の戻り値（1 ＝ 成功、0 ＝ 不発）
# @s ＝ プレイヤー（at @s）

$return run function $(func)
