#> tm_rpg:player/skill/wolf_dash/fx/cast_seq_init

# スキル wolf_dash の演出（cast）の、時間差の部分の進行役の設定。wolf_dash/fx/cast から execute summon で呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build wolf_dash_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 出したばかりの進行役（marker）

function tm_rpg:player/skill/fx/seq/init
tag @s add fxs_wolf_dash_cast
