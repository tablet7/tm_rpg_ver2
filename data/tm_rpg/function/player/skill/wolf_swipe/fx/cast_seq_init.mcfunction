#> tm_rpg:player/skill/wolf_swipe/fx/cast_seq_init

# スキル wolf_swipe の演出（cast）の、時間差の部分の進行役の設定。wolf_swipe/fx/cast から execute summon で呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build wolf_swipe_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 出したばかりの進行役（marker）

function tm_rpg:player/skill/fx/seq/init
tag @s add fxs_wolf_swipe_cast
