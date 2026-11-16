#> tm_rpg:test/direction/fly_slash/seq

# 演出のテスト用の見えない弾の毎 tick の処理。player/skill/fx/seq/run から呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build fly_slash_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ テスト用の marker（at @s）。スコア fx_t ＝ 出してからの tick 数

teleport @s ^ ^ ^1
execute at @s run teleport @e[type=minecraft:item_display,tag=fxt_fly_slash,distance=..4,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute at @s run function tm_rpg:player/skill/fly_slash/fx/tick
execute if score @s fx_t matches 10 at @s run function tm_rpg:player/skill/fly_slash/fx/hit
