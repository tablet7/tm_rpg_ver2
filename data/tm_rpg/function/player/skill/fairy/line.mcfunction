#> tm_rpg:player/skill/fairy/line

# スキル「妖精」の光の線1本の設定。fx/cast（設計図 fairy_fx.json の raw）から execute summon minecraft:item_display run function で呼ばれる（1回に 20 本）
# 見た目（リソースパックの光の筋）を持たせ、向きと長さを毎回ランダムにして、数 tick で消す。当たり判定は無い（当たるのは fire の見えないレーザー）
# @s ＝ 出したばかりの線（item_display）。実行位置 ＝ 線の中心

# 見た目（モデル tm_rpg:skill/fairy/streak・太さ・明るさ。自動生成）
function tm_rpg:player/skill/fairy/fx/model_streak

# 向き: 左右 0〜359 度・上下 -70〜70 度（上下を ±90 まで振ると、縦向きの線に偏るため狭めている）
execute store result entity @s Rotation[0] float 1 run random value 0..359
execute store result entity @s Rotation[1] float 1 run random value -70..70

# 長さ: 2.0〜4.0 マス（transformation.scale の z ＝ 線の長さ方向）
execute store result entity @s transformation.scale[2] float 0.01 run random value 200..400

# 消える時間（kill_time 9 ＝ 出してから 約 10 tick。main が毎 tick 1 ずつ減らし、-1 で消す）
tag @s add delete_entity
scoreboard players set @s kill_time 9
