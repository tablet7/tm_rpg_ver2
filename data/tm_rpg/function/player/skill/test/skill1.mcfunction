#> tm_rpg:player/skill/test/skill1

# テスト用スキル（前方3マスの範囲にダメージ）。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算と範囲攻撃
function tm_rpg:player/skill/skill_damage

data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

function tm_rpg:player/skill/shape/front3

# 見た目
#execute positioned ^ ^ ^3 positioned ~ ~1.8 ~ run particle dust{color:[1.0, 0.0, 0.0], scale:1.0} ~ ~ ~ 0 0 0 10 10
execute positioned ^ ^ ^3 positioned ~ ~0.5 ~ run particle minecraft:sweep_attack ~ ~1 ~ 1 0 1 0.1 20

# 音
playsound minecraft:entity.player.attack.strong player @a

return 1
