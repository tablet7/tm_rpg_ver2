#> tm_rpg:test/direction/fly_slash/model_init

# 演出のテスト用の、弾の見た目（item_display）の設定。test/direction/fly_slash/play から execute summon で呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build fly_slash_fx.json）。手で直さず、設計図を直して作り直す
# 当たり判定は無い（projectile・damage_marker を付けない）。テスト用の marker（seq）が毎 tick 連れて行き、kill_time で消える
# @s ＝ 出したばかりの item_display

rotate @s ~ ~
function tm_rpg:player/skill/fly_slash/fx/model_crescent
tag @s add fxt_fly_slash
tag @s add delete_entity
scoreboard players operation @s kill_time = #fx_len temp
