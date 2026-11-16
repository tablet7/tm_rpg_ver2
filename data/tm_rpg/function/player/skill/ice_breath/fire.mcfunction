#> tm_rpg:player/skill/ice_breath/fire

# スキル「氷のブレス」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/warn_ice_breath（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・sustain_power・sustain_time）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# 当たる範囲: 前方 5 マス・5 マス先で左右 約 4 マスずつの扇形。見えないレーザー3本（中央・左右 36 度）の箱（3 マス四方）で埋める
#   中央 … 目の 0.5 マス前から。箱の中心は前方 1.5・3.5 マス（前方 0〜5 マス・左右 1.5 マス）
#   左右 … 目の 1 マス前（36 度の向き）から。箱の中心はその向きに 2・4 マス（左右 約 3.85 マス・前方 約 4.7 マスまで）
#   箱は傾かない（マス目に沿った箱）ので、向きによって少し変わる。壁があると、その向きのレーザーは壁で止まる
# 向きと場所は、使った瞬間で固定（使ったあとに動いたり向きを変えたりしても、ブレスは動かない）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

# 吐いている tick（60 ＝ 3 秒。skill2 の hit_interval 10 なので、出した瞬間・0.5・1・…・3 秒後の 7 回当たる）
data modify storage tm_rpg:damage kill_time set value 60
# 敵が使ったときは、吐いているあいだ（60 tick）自分から動けない（enemy/skill/end → enemy/skill/lock。プレイヤーには関係ない）
scoreboard players set #skill_lock temp 60

# 当たった相手に付ける効果（鈍足・沈潜。弾が持ち、当たるたびに相手を @s にして呼ばれる）
data modify storage tm_rpg:damage func set value "tm_rpg:player/skill/ice_breath/hit_func"

# 3本で同じ id を使う（skill2 が写す。重なった場所にいる相手にも、1回の間隔に1回だけ当たる）
execute store result score #ice_breath_id temp run random value 0..2147483646

# レーザー3本（中央・右 36 度・左 36 度）。目の位置から出す
execute anchored eyes positioned ^ ^ ^0.5 summon minecraft:marker run function tm_rpg:player/skill/ice_breath/skill2
execute anchored eyes rotated ~36 ~ positioned ^ ^ ^1 summon minecraft:marker run function tm_rpg:player/skill/ice_breath/skill2
execute anchored eyes rotated ~-36 ~ positioned ^ ^ ^1 summon minecraft:marker run function tm_rpg:player/skill/ice_breath/skill2

# 使ったときの演出
function tm_rpg:player/skill/ice_breath/fx/cast
