#> tm_rpg:test/direction/fly_slash/play

# スキル fly_slash の演出だけを試す関数（ダメージなし）。手動で実行する: function tm_rpg:test/direction/fly_slash/play
# 自動生成（mc-skill-fx の mcfx.py build fly_slash_fx.json）。手で直さず、設計図を直して作り直す
# 使ったときの演出を自分の場所で出す。続けて、目の前から見えない弾を 10 tick 前に飛ばし、飛んでいるあいだの演出と、最後に当たったときの演出を出す。弾の見た目（モデル）も一緒に飛ばす
# @s ＝ 試すプレイヤー（at @s）

scoreboard players operation #skill_owner temp = @s ent_id
function tm_rpg:player/skill/fly_slash/fx/cast
scoreboard players set #fx_len temp 10
execute anchored eyes positioned ^ ^ ^1 summon minecraft:item_display run function tm_rpg:test/direction/fly_slash/model_init
execute anchored eyes positioned ^ ^ ^1 summon minecraft:marker run function tm_rpg:test/direction/fly_slash/seq_init
