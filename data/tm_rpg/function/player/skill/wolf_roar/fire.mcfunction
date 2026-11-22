#> tm_rpg:player/skill/wolf_roar/fire

# ボス「ガーディアンウルフ」の技「咆哮」の本体。enemy/skill/wolf_roar から呼ばれる（ダメージは無い）
# 半径 10 マス以内の各プレイヤーの、ボスの側へ 1.5 マス・高さ 1 の所で、敵の吹き飛ばし（enemy/skill/push_burst/burst）の風の爆発を起こす
#   風の爆発は 5 マスまでしか届かないので、プレイヤーごとに近くで起こす（遠い人も近い人も、だいたい同じ強さで、ボスから遠ざかる向きに飛ぶ）
#   強さは #push_dist 15（いちばん強いレベル 3）。近くにいるほかのプレイヤーも、その爆発で少し飛ぶ
#   同じ tick に何回起こしても、push_burst/after が最後の1つのあとで片付ける
# @s ＝ ボスの本体の当たり判定（core）。実行位置 ＝ ボスの足元の中心

# 爆発を起こす敵（push_burst/burst の @s。近くの敵を「爆発で吹き飛ばない」ようにする）と、向かう先を見分けるタグ
tag @s add wolf_roar_self
scoreboard players set #push_dist temp 15
execute as @a[tag=mob,gamemode=!spectator,distance=..10] at @s facing entity @e[type=#tm_rpg:mob_type,tag=wolf_roar_self,limit=1] feet rotated ~ 0 positioned ^ ^1 ^1.5 as @e[type=#tm_rpg:mob_type,tag=wolf_roar_self,limit=1] run function tm_rpg:enemy/skill/push_burst/burst
tag @s remove wolf_roar_self

# 使ったときの演出（咆哮の声と、広がる衝撃の輪）
execute rotated ~ 0 run function tm_rpg:player/skill/wolf_roar/fx/cast
