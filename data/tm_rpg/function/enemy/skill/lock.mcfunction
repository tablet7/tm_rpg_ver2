#> tm_rpg:enemy/skill/lock

# 敵を、技を使っているあいだ自分から動けなくする共通の関数。enemy/skill/warn/start（予兆のあいだ）と enemy/skill/end（技を出し続けるあいだ）から呼ばれる
# 移動速度を 0 にするだけなので、向きは変えられ、ノックバック・吹き飛ばし・移動スキル（Motion）では動く。残り tick は enemy/skill/lock_tick が減らし、0 で元に戻す
# 動けないあいだは、次の技も選ばない（enemy/ai/think）
# 入力: #skill_lock temp ＝ 動けない tick（今の残りより短ければ、長いほうを残す）
# @s ＝ 技を使う敵

execute unless score @s skill_lock >= #skill_lock temp run scoreboard players operation @s skill_lock = #skill_lock temp
# 移動速度を 100% 下げる（既に付いているときは失敗するだけ）
attribute @s minecraft:movement_speed modifier add tm_rpg:skill_lock -1 add_multiplied_total
