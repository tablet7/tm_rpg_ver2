#> tm_rpg:player/skill/fly_slash/fx/cast_seq_init

# スキル fly_slash の演出（cast）の、時間差の部分の進行役の設定。fly_slash/fx/cast から execute summon で呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build fly_slash_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 出したばかりの進行役（marker）

function tm_rpg:player/skill/fx/seq/init
tag @s add fxs_fly_slash_cast
