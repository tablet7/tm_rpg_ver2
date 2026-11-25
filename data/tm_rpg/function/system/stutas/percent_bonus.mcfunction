#> tm_rpg:system/stutas/percent_bonus

# 特化装備（防具・アクセサリー）によるステータスの割合（%）ボーナスをかける関数。stutas/hendou_main から（ステータスを組み立てるときだけ）呼ばれる
# 装備・バフ・基礎値を合計した後の値（各 *_score）に倍率をかける
# 倍率は装備が変わったときに stutas/percent_watch が求めて eq_pct_<種類> に入れている（ここでは装備を見ない）
# @s ＝ プレイヤーまたは敵

# 共通の定数
scoreboard players set #100 temp 100

# HP特化（1か所につき最大HP +10%）
execute unless score @s eq_pct_hp matches 100 run scoreboard players operation @s hp_score *= @s eq_pct_hp
execute unless score @s eq_pct_hp matches 100 run scoreboard players operation @s hp_score /= #100 temp
