#> tm_rpg:enemy/skill/push_burst/burst

# 敵の位置で「風の爆発」を起こし、周り 5 マスのプレイヤーを、敵から遠ざけるように吹き飛ばす（共通）。enemy/skill/<スキル> から呼ぶ
# 見えない防具立てに、エンチャント tm_rpg:push_burst の付いた棒を持たせて出す。防具立ての tick でエンチャントが
# 爆発（explode。ブロックは壊さない・ダメージなし）を起こし、続けて enemy/skill/push_burst/after を動かして防具立てを消す
# 入力: #push_dist temp ＝ 飛ばす距離（マス。5・10・15 のどれか。だいたい）。エンチャントのレベル 1〜3 に直す（..7→1、8..12→2、13..→3）
#   強さ（knockback_multiplier）はエンチャントの lookup の values（レベル1〜3 の順）で調整する。変えたらサーバーの再起動が要る
# 爆発はほかの敵も吹き飛ばすので、近くの敵に「爆発で吹き飛ばない」属性をこの爆発のあいだだけ付ける（after が外す）
# @s ＝ スキルを使う敵（at @s）

# レベル（5 マス → 1、10 マス → 2、15 マス → 3）
scoreboard players set #push_level temp 2
execute if score #push_dist temp matches ..7 run scoreboard players set #push_level temp 1
execute if score #push_dist temp matches 13.. run scoreboard players set #push_level temp 3

# 近くの敵（自分も）は、この爆発では吹き飛ばない（爆発がとどくのは 5 マス。少し広めに 6 マス）
execute as @e[type=#tm_rpg:mob_type,tag=enemy,tag=!push_guard,distance=..6] run function tm_rpg:enemy/skill/push_burst/guard

# 爆発を起こす防具立て（見えない・当たり判定なし）。レベルを変えるため、レベルごとの行にする（マクロを使わない）
execute if score #push_level temp matches 1 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Silent:1b,Tags:["push_burst_helper"],equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"tm_rpg:push_burst":1}}}}}
execute if score #push_level temp matches 2 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Silent:1b,Tags:["push_burst_helper"],equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"tm_rpg:push_burst":2}}}}}
execute if score #push_level temp matches 3 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Silent:1b,Tags:["push_burst_helper"],equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"tm_rpg:push_burst":3}}}}}

# 念のため: 防具立ての tick でエンチャントが動かなかったときに、3 tick 後に main が片付ける（enemy/skill/push_burst/safety）
scoreboard players set #push_burst_wait temp 3
