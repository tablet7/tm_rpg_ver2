#> tm_rpg:player/skill/test/skill1

# テスト用スキル（前方3マスの範囲にダメージ）。custom_data の skill から player/skill/run 経由で呼ばれる
# 成功で 1、当たる敵がいないときは 0 を返す（0 のときは MP とクールタイムを使わない）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算と範囲攻撃（当たらなければ不発）
function tm_rpg:player/skill/skill_damage
execute unless function tm_rpg:player/skill/shape/front3 run return 0

# 見た目
#execute positioned ^ ^ ^3 positioned ~ ~1.8 ~ run particle dust{color:[1.0, 0.0, 0.0], scale:1.0} ~ ~ ~ 0 0 0 10 10
execute positioned ^ ^ ^3 positioned ~ ~0.5 ~ run particle minecraft:sweep_attack ~ ~1 ~ 1 0 1 0.1 20

# 音
playsound minecraft:entity.player.attack.strong player @a

return 1
