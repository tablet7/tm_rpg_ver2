#> tm_rpg:player/skill/fairy/fire

# スキル「妖精」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/warn_fairy（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# 当たる範囲: 目の位置から見ている向き（上下もふくむ）へ、前方 約 -0.5〜10.5 マス・左右 2 マス・上下 1.5 マス
#   見えないレーザー2本（左右へ 0.5 マスずらす）。それぞれ 3 マス四方の箱（hit_size 3）を、前方 1・3・5・7・9 マスに置く
#   箱は傾かない（マス目に沿った箱）ので、斜めを向くと左右は最大 約 2.6 マスまで広がる。壁があると、そこで止まる
# 一度だけ当たる: 2本は同じ id（#fairy_id temp）で hit_interval が無いので、1体に1回だけ（tag pierce の tama_hit_id）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

# レーザーが残る tick（1 ＝ 出した tick と次の tick。同じ相手には1回しか当たらないので、どちらかの tick で1回）
data modify storage tm_rpg:damage kill_time set value 1

# 2本で同じ id を使う（skill2 が写す。重なった場所にいる相手にも1回だけ当たる）
execute store result score #fairy_id temp run random value 0..2147483646

# レーザー2本（左右へ 0.5 マス）。目の位置から出す
execute anchored eyes positioned ^0.5 ^ ^ summon minecraft:marker run function tm_rpg:player/skill/fairy/skill2
execute anchored eyes positioned ^-0.5 ^ ^ summon minecraft:marker run function tm_rpg:player/skill/fairy/skill2

# 使ったときの演出（光の線は、当たる範囲に合わせて目の位置・向きから出す。設計図の座標は目からの [左, 上, 前]）
# anchored feet で戻す（anchored eyes のままだと、fx/cast の ^ が目の高さぶん、もう一度上にずれる）
execute anchored eyes positioned ^ ^ ^ anchored feet run function tm_rpg:player/skill/fairy/fx/cast
