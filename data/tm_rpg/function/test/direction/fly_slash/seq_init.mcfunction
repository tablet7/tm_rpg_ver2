#> tm_rpg:test/direction/fly_slash/seq_init

# 演出のテスト用の見えない弾（marker）の設定。test/direction/fly_slash/play から execute summon で呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build fly_slash_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 出したばかりの marker

function tm_rpg:player/skill/fx/seq/init
tag @s add fxs_test_fly_slash
